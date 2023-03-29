# 0x02. Flutter - Twitter clone: static part 1

## Tasks

### 0. New Flutter Project

mandatory

Create a new flutter project `Twitter`.

To keep our project code base organized create the following folders inside `lib/`

- `screens` : will contain the app’s pages
- `widgets` : will contain the app’s reusable widgets

The current folder structure should look like this :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/773ff1a3368f5577961a4ba0bfccb63f13cb25b2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=64f3f03a1dc1e1a15cc816eeff1739df6cf875faddfa52717bc0582f8b6aab29)

Copy and paste the following code inside `main.dart`:

```
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    );
  }
}

```

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/screens, lib/widgets, lib/main.dart`

Done? Help

### 1. Sign Up/In

mandatory

After setting up the project we will start by building the Sign up and Sign in pages.

The final result should look like this :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/ba844d1780ecfe67fe24e72b253ee10681681489.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=35c1255eb9489d56fcf5daab8dda324073f58e19b8e401fa3ada66b9140020d7) ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/b8dbc41a648f6fb422a4917c4a1a3a058d8d0f6d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=e248d85173441361173bed0f7d0fabb5a1c951a42578e9c90f78f82730fe6be1)

As you may notice some of the sections in both screens are similar therefore it’s a good practice

to extract these widgets which will be used more than once to make our code cleaner and reusable.

We will start by creating a reusable widget for our entry fields.

Inside `lib/widgets/` create a new file `entry_field.dart`

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/7480f10c7afbb9241cd0fb798afc7fc14f0fec2c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=1ac088b6e304d07bcd12edc8a4e3c452ab99a30acb521a4d84e860430fbcf183)

Inside `entry_field.dart` create a new stateless widget `CustomEntryField` with these attributes :

- `hint` : `String`
- `controller` : `TextEditingController`
- `isPassword` : `bool` (default `false`)

Complete the widget body so it looks as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/01d57d2e51e033d6a971175f3feefc39dcacd1b9.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=96d6a954b09d0529588ebed5672c66ecc2da193b716580039a78954e303bcf20)

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/ccbeb8022e610cb1554031d8af93c351c5605290.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=f528d1f2f5b490c15eb6d09c4d75f2ccb6f534877a4d25dca4cfc054ab8e68aa)

**Widget requirements : (TextField)**

- Vertical margin : 15
- BorderSide : Colors.grey[200]
- border Radius : `circular(30)`
- Set the `TextField` controller to `controller`
- Only obscure text when `isPassword` is true
- Outline border color : `Colors.blue`
- Outline border radius : `circular(30)`
- Set the hint text to `hint`

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/widgets/entry_field.dart`

Done? Help

### 2. Submit button

mandatory

Just like we did with the entry field now we are going to create a reusable button :

Inside `lib/widgets/` create a new file `flat_button.dart`

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/fdb032e4e14a79b889f5fc1c7ae031492ca06a74.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=e3a12d39b023cdaa4c9411617f1a44e67c0560b7bcf7dd4a489e974ae868d388)

Inside `flat_button.dart` create a new stateless widget `CustomFlatButton` with these attributes :

- `label`: String
- `onPressed` : Function

Complete the widget body to look as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/288d12baab5bb89f3647b8ef35871c32cd8fe1ab.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=5f873e0544fddd2a638dfa7f712e5285deb49a427fa1e74aaa577949153b5259)

**Widget requirements :**

- Using `TextButton`
- Set the `onPressed` argument to the `onPressed` function pointer
- Set the button label to `label`
- Set the `label` font to `Raleway`
- Set the `label` font size to `30` and `height: 1`

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/widgets/flat_button.dart`

Done? Help

### 3. Sign In

mandatory

Inside `lib/screens/` create a new file `signin_screen.dart`

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/a4bfdd15f71470cef9c6f05ef8bde79c86a87cc5.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=22d14016a0b28d710ee43dd028fb0f3803e1e2a5f0aa00b55092998ac1e9a04b)

Inside `signin_screen.dart` create a `stateful widget SignIn` with these attributes :

- `_emailController` : TextEditingController
- `_passwordController` : TextEditingController

Complete the widget body to look as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/848eefd580359e5358a993eb8c45822ceb15ad63.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d155caeb6e5c75cebd56151667138eb1bd734cffed7f522104dfba309ee2e6e4)

**Requirements** :

- Image that you need : `http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png`
- Initiate `_emailController` inside the `initState()` method
- Initiate `_passwordController` inside the `initState()` method
- Dispose of `_emailController` inside the `dispose()` method
- Dispose of `_passwordController` inside the `dispose()` method
- The screen should be scrollable if needed
- Make sure to use the already created custom widgets while passing the right params
- Leave the `onPressed` functions empty for now

Inside “lib/main.dart”

- Set the home attribute of the `MaterialApp` to `SignIn()`

Inside “lib/screens/signin_screen.dart”:

- Edit the Sign Up button to navigate to SignUp() page when pressed

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/screens/signin_screen.dart`

Done? Help

### 4. Sign Up

mandatory

Inside `lib/screens/` create a new file `signup_screen.dart`

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/d579a12507476811e3d4b8dc1c3e25297ee11eb4.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=0b820485f0d793582775bc078a32e8587a17c5c81653f0b03908f393b0f66b77)

Inside `signup_screen.dart` create a `stateful widget SignUp` with these attributes :

- `_nameController` : TextEditingController
- `_emailController` : TextEditingController
- `_passwordController` : TextEditingController
- `_confirmController` : TextEditingController
- `_formKey` : GlobalKey()

Complete the widget body to look as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/458078b0e87da5983c936d6ce1c166c6f281d94d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=97105d52eb804cc5ed8e9aeb2786581951fef4a854684f934570cb16e1fab21a)

**Requirements :**

- Image that you need : `http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png`
- Initiate `_nameController` inside the `initState()` method
- Initiate `_emailController` inside the `initState()` method
- Initiate `_passwordController` inside the `initState()` method
- Initiate `_confirmController` inside the `initState()` method
- Dispose of `_nameController` inside the `dispose()` method
- Dispose of `_emailController` inside the `dispose()` method
- Dispose of `_passwordController` inside the `dispose()` method
- Dispose of `_confirmController` inside the `dispose()` method
- You need to use the Form widget wrapped in a container
- Container height : screen height - 88
- Container padding : horizontal 30
- Set key attribute of Form to `_formKey`
- Make sure to use the already created custom widgets while passing the right params
- Leave the `onPressed` functions empty for now
- The screen should be scrollable if needed

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/screens/signup_screen.dart`

Done? Help

### 5. Forgot Password

mandatory

Inside `lib/screens/` create a new file `forgot_password_screen.dart`

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/2053dadebda3047ca6bb9b92b1f32e4fe4154048.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=79104dfca5532356c227c2a25c3c87e9ecc55bff6cd166545b0e43a1cb317855)

Inside `forgot_password_screen.dart` create a `stateful widget ForgetPassword` with these attributes :

- `_emailController`: TextEditingController

Complete the widget body to look as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/7f356dbfdd950b516d12b70b1e9e82b597de5185.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=b043202ed51d260e9d26071f29d13ffd8e08e8d7f024e72f2c4488beb26c9ea7)

**Requirements :**

- Initiate `_emailController` inside the `initState()` method
- Dispose of `_emailController` inside the `dispose()` method
- Make sure to use the already created custom widgets while passing the right params
- The screen should be scrollable if needed
- Leave the `onPressed` functions empty for now

Inside `lib/screens/signin_screen.dart`:

- Edit the “Forget password?” button to navigate to `ForgetPassword()` page when pressed

At this point the app should behave as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/0e5d92a8e1eae2775b36cb083d6aa077ca3c3f2c.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=862c2b83088e8ee90a47bc5ae833002ce5cfdbce84ef47b873ea8d87eb9d23cf)

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/screens/forgot_password_screen.dart`

Done? Help

### 6. Home Screen

mandatory

Inside `lib/screens/` create a new file `home_screen.dart` Inside `lib/widgets/` create a new file `side_bar_menu.dart`

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/4/7b51fe61f8669e48ffd02c9708ad3aed9a8b3752.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=17b6d93826c49e138f067930d608d073c94d35d74eb99384bd8fbf97a6eef26d)

Inside `side_bar_menu.dart` create a new `stateful widget SideBarMenu` and make it look as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/39034c88311247d7cb894adb5b221c54e12fc344.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7a2c6d3182924dc36b739592b3591e3337399cb3093592523129385c7feeac1b)

**Requirements :**

- All menu items are `clickable`
- You can use any network image as a placeholder
- the `username` and follower count for now is just a place holder but will be fetched with our backend later
- Please note that not all feature added to the menu will be developed some of them are just placeholders

Inside `lib/screens/home_screen.dart` create a new `stateful widget HomeScreen` for now leave it empty just add the sidebar and the title as follows :

![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2022/5/e6c5cb844913571cf4a19b5af2d98504f3bd6212.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220804%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220804T014801Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=34915595c4fc732ddfd1d5f6552332f0e5b65ce3b585fced2bd55c17da041578)

Inside `lib/screens/signin_screen.dart`:

- Edit the “Submit” button to navigate to HomeScreen() page when pressed

**Repo:**

- GitHub repository: `holbertonschool-twitter_clone`
- Directory: `twitter`
- File: `lib/screens/home_screen.dart, lib/widgets/side_bar_menu.dart`
