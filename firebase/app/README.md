For connecting Firebase with our app we will have to follow certain steps:

add below in dependencies section in your pubsec.yaml file and run "flutter pub get":
cloud_firestore: ^4.15.10
firebase_core: ^2.16.0
firebase_auth: ^4.10.0
google_sign_in: ^6.2.1

After doing so run command "flutterfire configure"
and create the firebase project

Above step will install all nessacary api key as connection for you
now add below code into the main.dart:

void main() async {
WidgetsFlutterBinding.ensureInitialized();
Platform.isWindows
? await Firebase.initializeApp(
options: const FirebaseOptions(
apiKey: "AIzaSyD7G8WlPkIwu_XUVC_QMKsGVlj_TB5nxJY",
appId: "1:616198733019:web:06fd69859fec9b801160fe",
messagingSenderId: "616198733019",
projectId: 'assignment-6-22dcf',
authDomain: 'assignment-6-22dcf.firebaseapp.com',
storageBucket: 'assignment-6-22dcf.appspot.com',
measurementId: 'G-2542J9QEYZ',
))
: await Firebase.initializeApp();
runApp(const MyApp());
}
