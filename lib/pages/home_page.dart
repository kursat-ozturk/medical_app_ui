import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app_ui/pages/style/style.dart';

import '../data/data.dart';
import '../size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 7),
            child: Column(
              children: const [
                //User Info Area
                UserInfo(),
                //Search Medical Area
                SearchMedical(),
                //Services Area
                Services(),
                //GetBestMedicalService
                GetBestMedicalService(),
              ],
            ),
          ),
          //UpcomingAppointments
          const UpcomingAppointments(),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text("👋 Hello!"),
      ),
      subtitle: Text(
        "Mrs. Jessica Lane",
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
      trailing: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppStyle.profile),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 18.0,
              width: 18.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppStyle.primarySwatch,
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchMedical extends StatelessWidget {
  const SearchMedical({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search medical...",
          fillColor: AppStyle.inputFillColor,
          filled: true,
          prefixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.searchIcon),
          ),
          suffixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.filterIcon),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Services",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: servicesList
              .map(
                (e) => CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 17,
                    height: SizeConfig.blockSizeHorizontal! * 17,
                    child: Center(
                      child: SvgPicture.asset(e.image),
                    ),
                  ),
                  onPressed: () {},
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class GetBestMedicalService extends StatelessWidget {
  const GetBestMedicalService({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffDCEDF9),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal! * 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get the Best\nMedical Service",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                        Text(
                          "Get the Best\nMedical Service",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                    fontSize: 11,
                                    height: 1.5,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 2),
                    child: Image.asset(AppStyle.image1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 7),
          child: Text(
            "Upcoming Appointments",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Row(
              children: upcomingAppointmentsList
                  .map(
                    (e) => CupertinoButton(
                      onPressed: () {},
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        height: SizeConfig.blockSizeVertical! * 17,
                        width: SizeConfig.blockSizeHorizontal! * 80,
                        decoration: BoxDecoration(
                          color: e.color,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              width: 71.46,
                              height: 99.03,
                              decoration: BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(26.0),
                              ),
                              child: Center(
                                child: Text(
                                  e.date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  e.time,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        letterSpacing: 1,
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  e.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                        height: 1.8,
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  e.subTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                        height: 1.8,
                                        color: Colors.white60,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
