import * as React from 'react';
import { Button, View } from 'react-native';
import { createDrawerNavigator } from '@react-navigation/drawer';
import { NavigationContainer } from '@react-navigation/native';
import Hirek from './Hirek'
import Szereplok from './Szereplok'
import Teszt from './Teszt'
import Vilagosoldal from './Vilagosoldal'
import Sotetoldal from './Sotetoldal'
import Kedvelesek from './Kedvelesek'
import Trailer from './Trailer'
import Galeria from './Galeria'
import Szoveges from './Szoveges'
import Appfilmek from './Appfilmek'

function HomeScreen({ navigation }) {
  return (
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
      <Button
        onPress={() => navigation.navigate('Notifications')}
        title="Go to notifications"
      />
    </View>
  );
}

function NotificationsScreen({ navigation }) {
  return (
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
      <Button onPress={() => navigation.goBack()} title="Go back home" />
    </View>
  );
}

function Hirek_Lap({ navigation }) {
  return (
    <Hirek />
  );
}

function Szereplok_Lap({ navigation }) {
  return (
    <Szereplok />
  );
}

function Teszt_Lap({ navigation }) {
  return (
    <Teszt />
  );
}

function Vilagosoldal_Lap({ navigation }) {
  return (
    <Vilagosoldal />
  );
}

function Sotetoldal_Lap({ navigation }) {
  return (
    <Sotetoldal />
  );
}

function Kedvelesek_Lap({ navigation }) {
  return (
    <Kedvelesek />
  );
}

function Trailer_Lap({ navigation }) {
  return (
    <Trailer />
  );
}

function Galeria_Lap({ navigation }) {
  return (
    <Galeria />
  );
}

function Szoveges_Lap({ navigation }) {
  return (
    <Szoveges />
  );
}

function Appfilmek_Lap({ navigation }) {
  return (
    <Appfilmek />
  );
}

const Drawer = createDrawerNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Drawer.Navigator initialRouteName="Home">
        {/*<Drawer.Screen name="Home" component={HomeScreen} />*/}
        {/*<Drawer.Screen name="Notifications" component={NotificationsScreen} />*/}
        <Drawer.Screen name="Szereplők" component={Szereplok_Lap} />
        <Drawer.Screen name="Hírek" component={Hirek_Lap} />
        <Drawer.Screen name="Világos oldal" component={Vilagosoldal_Lap} />
        <Drawer.Screen name="Sötét oldal" component={Sotetoldal_Lap} />
        <Drawer.Screen name="Kedvelések" component={Kedvelesek_Lap} />
        <Drawer.Screen name="Trailer" component={Trailer_Lap} />
        <Drawer.Screen name="Galéria" component={Galeria_Lap} />
        <Drawer.Screen name="Szöveges" component={Szoveges_Lap} />
        <Drawer.Screen name="Filmek leírása" component={Appfilmek_Lap} />
        {/*<Drawer.Screen name="Teszt" component={Teszt_Lap} />*/}
      </Drawer.Navigator>
    </NavigationContainer>
  );
}