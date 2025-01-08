import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/auth_view_controller.dart';
import 'package:rajas_first_asar_game/features/auth/presentation/bloc/auth_bloc_bloc.dart';

class AuthViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final widthAvl = MediaQuery.of(context).size.width;
    final heightAvl = MediaQuery.of(context).size.height;
    final controller = AuthViewController();
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex:10, child: Container(),),
            Expanded(
              flex: 2,
              child: SizedBox(width: widthAvl * 0.9, 
              child: Row(
                spacing: 25,
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller.mobileTextController,
                      decoration: InputDecoration(border: OutlineInputBorder(),
                       labelText: "Enter Mobile Number"))),
                  SizedBox(
                    height: 50,
                    width: widthAvl * 0.35,
                    child: ElevatedButton(onPressed: (){
                      authBloc.add(AuthBlocEvent.requestOtp(controller.mobileTextController.text));
                    }, child: Text("Send Otp")))
                ],
              )),
            ),

            Expanded(
              flex: 2,
              child: SizedBox(width: widthAvl * 0.9, 
              child: Row(
                spacing: 25,
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller.otpController,
                      decoration: InputDecoration(border: OutlineInputBorder(), 
                      labelText: "Enter Otp"))),
                  SizedBox(
                    height: 50,
                    width: widthAvl * 0.35,
                    child: ElevatedButton(onPressed: (){
                      //TODO: implement validation service
                      if(authBloc.state is OtpSent){
                        final otpSentState = authBloc.state as OtpSent;
                        authBloc.add(AuthBlocEvent.login(otpSentState.user, controller.otpController.text));
                      }else{
                        print('Login not possible from this state: ${authBloc.state}');
                      }                                            
                    }, child: Text("Login")))
                ],
              )),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: Image.network('https://media.licdn.com/dms/image/v2/D560BAQFsp7Z3lqcyYg/company-logo_200_200/company-logo_200_200/0/1724391016178/asargamingnetwork_logo?e=1744243200&v=beta&t=GzM2HdSeS3N0EPeSdetDObbQJ4XQ73oh4e5uPD41S9Q'),height: 50,width: 50,),
              ],
            ),

            Expanded(child: Container(),),
          ],
        );
  }
}
