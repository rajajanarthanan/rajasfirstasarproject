
import {onRequest} from "firebase-functions/v2/https";
import * as logger from "firebase-functions/logger";
import express, {Request, Response} from "express";
import {createServer} from "http";
import {Server} from "socket.io";

const app = express();


const server = createServer(app);
const io = new Server(server, {
  cors: {
    origin: "*",
    methods: ["GET", "POST"],
  },
});


io.on("connection", (socket) => {
  logger.info("A client connected:", socket.id);

  socket.on("disconnect", () => {
    console.info("Client disconnected:", socket.id);
  });
});

app.get("/emit", (req: Request, res: Response) => {
  const defaultPayLoad = {
    eventId: req.body.eventId,
    orderBook: {
        yesOrders: 
        [
            {
                price: 9.5,
                quantity: 1,
                _id: "6778ee44ed3732a352318997"
            },
        ],
        noOrders: []
    }
};
  io.emit("message", defaultPayLoad);

  res.status(200).send("Payload emitted to all clients.");
});

export const socketServer = (req: Request, res: Response): void => {
  server.emit("request", req, res);
};
