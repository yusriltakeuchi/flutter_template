# Flutter Template

<p align="center">
  <img src="https://i.imghippo.com/files/lxvb2047dRg.png" width="300" height="700">
  <img src="https://i.imghippo.com/files/nu6826IW.png" width="300" height="700">
</p>
This is a template for creating a new Flutter project with a well-structured architecture and best practices.

:man_mechanic: Created by : Yusril Rapsanjani

## Features:
- **Domain-Driven Design (DDD)**: Organizes code into logical layers for maintainability and scalability.
- **Freezed**: Utilized for immutable data classes and sealed classes, reducing boilerplate code.
- **BLoC / Cubit**: Implements state management using the BLoC pattern for a clear separation of concerns.
- **AutoRoute**: Provides automatic route generation and navigation management.
- **Multiple Variants**: Supports multiple environments (`dev`, `staging`, `prod`) to facilitate testing and deployment.
- **Dependency Injection**: Ensures modular and testable code structure.
- **Error Handling**: Centralized error handling using `Failure` and `ResponseCode` for better debugging and UX.

This template serves as a solid foundation for developing scalable and maintainable Flutter applications. 🚀

## :rocket: Tested On Framework
:arrow_right: Flutter 3.38.4

:arrow_right: Dart 3.10.3

## :hammer: Project Structure
```
lib
│── bloc
│── config
│── corer
│   │── components
│   │── constant
│   │── models
│   │── networks
│── domain
│   │── entities
│   │── models
│   │── repositories
│── gen
│── infrastructure
│   │── datasource
│   │── repositories
│── injection
│── presentation
│── routing
│── theme
│── utils
│── app.dart
│── bootstrap.dart
│── main.dart
```

## :computer: Install Template
1. First you need to install copy_template to generate project based on name
````
dart pub global activate copy_template
````
2. Install to specific directory on your pc with your project name
```
copy_template <project_name> https://github.com/yusriltakeuchi/flutter_template.git <path>
```
For example:
```
copy_template my_app https://github.com/yusriltakeuchi/flutter_template.git /Users/mac/Documents/FLUTTER_PROJECT
```

## :package: Change Package Name
You can change the package name by running the command below
```
dart run change_app_package_name:main com.package.name
```
1. Change name in ``android/app/build.gradle`` -> ``productFlavors``
2. Then change package name in ``utils/flavor/flavor_utils.dart``

## :key: Keystore
1. Create ```key.properties``` file in ``android`` directory with the following content:
```
storePassword=yourpassword
keyPassword=yourpassword
keyAlias=youralias
storeFile=yourfilelocation.jks
```
2. Place your keystore .jks file in storeFile setting location

## :rocket: Run The Project
You can choose to run your project with various variant, currently available is ``dev``, ``staging``, and ``prod``.
```
flutter run --flavor dev
```

## :first_quarter_moon: Access Flavor Variant
You can access the flavor variant by using ``FlavorUtils`` class
```dart
flavor.current
```

## :open_book: Create New Page
1. You need to create a page on ``presentation`` directory
2. Add the ``@RoutePage()`` annotation in your screen class, example:
```dart
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: MyTheme.style.title.copyWith(
              color: MyTheme.color.white,
              fontSize: AppSetting.setFontSize(45)
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyTheme.color.primary,
      ),
      body: BlocProvider(
        create: (context) => UserBloc()..getUsers(params: {'page': 1}),
        child: const HomeBody(),
      ),
    );
  }
}
```
3. Run the make file to generate the code
```
make runner-build
```
4. open ``route.dart`` file and add your page into routes variables.
```dart
  @override
List<AutoRoute> get routes => [
  AutoRoute(page: SplashRoute.page, initial: true),
  AutoRoute(page: HomeRoute.page),
];
```

## :first_quarter_moon: Support Theme Mode
You can listen to the mode by using BlocBuilder into ThemeBloc. There are three modes available, ``light``, ``dark``, and ``system``.

## :information_source: Step to Fetch Data
1. Create Entity class in ``domain/entities``
2. Create APIExtension in ``infrastructure/datasource/base/api_datasource_ext.dart``
3. Create DataSource in ``infrastructure/datasource``
4. Create Abstract Class Repository in ``domain/repositories``
5. Create Repository Implementation in ``infrastructure/repositories``
6. Inject DataSource & Repository in ``injection``
6. Create Bloc Cubit in ``bloc``
7. Create Pages in ``presentation``

## :file_folder: File Template IntelliJ
<img src="https://i.ibb.co.com/S4zvGSv0/Screenshot-2025-02-06-at-09-40-27.png" width="300" height="150">
You can use the file template to generate the file quickly. It's available to create Entity, DTO and Bloc Cubit.

:arrow_right: [File Template](https://drive.google.com/file/d/1_bDbVwEfTAuccLj3MIjWYE1OomxnQa-7/view?usp=sharing)

How to install:
1. Download the file template
2. Open IntelliJ IDEA
3. Go to ``File`` -> ``Manage IDE Settings`` -> ``Import Settings...``
4. Choose the file template that you have downloaded
5. Create new file and you will see the following options.

<img src="https://i.ibb.co.com/1YNFP69m/Screenshot-2025-02-06-at-09-46-42.png" width="300" height="150">

## :package: My Flutter Package
:recycle: [assets_cleaner](https://pub.dev/packages/assets_cleaner) - A command-line tool wich helps you to clean your assets folder. It will remove all files that are not used in your project.