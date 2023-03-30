import React, { Component } from 'react';
import { ActivityIndicator, FlatList, Text, View, Image, Button, Linking, TouchableOpacity } from 'react-native';
const IP = require('./Ipcim');

export default class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      data: [],
      isLoading: true
    };
  }

  async getMovies() {
    try {
      const response = await fetch(IP.ipcim+'kedvelesek');
      const json = await response.json();
      //alert(JSON.stringify(json))
      this.setState({ data: json });
    } catch (error) {
      console.log(error);
    } finally {
      this.setState({ isLoading: false });
    }
  }

  componentDidMount() {
    this.getMovies();
                                                                                                                                                             console.log("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1985\nWindows 98\ngyzsombor6X\nStar Wars adatbázis\n2022.11.15.")
  }

  felvitel=(szam)=>{
    alert(szam)
    var adatok={
      bevitel1:szam
    }
    //alert(adatok.bevitel1)
    fetch(IP.ipcim+'felvitel',{
      method: "POST",
      body: JSON.stringify(adatok),
      headers: {"Content-type": "application/json; charset=UTF-8"}
    })
    .then(x=>x.text())
    .then(y=>alert(y))
      
      
  }

  render() {
    const { data, isLoading } = this.state;

    return (
      <View style={{ flex: 1, padding: 24, backgroundColor: 'black' }}>
        {isLoading ? <View><ActivityIndicator/>{/*<Image style={{width:300,height:500,alignSelf:"center"}} source={require('./Teszt_logo.jpg')} />*/}</View> : (
          <FlatList
            data={data}
            keyExtractor={({ id }, index) => id}
            renderItem={({ item }) => (
              <View>
                <Text style={{color: 'white', fontSize: 5}}></Text>{/* Üres sor */} 
                <Text style={{color: 'cyan', fontSize: 25, textAlign: 'left'}}>{item.SzereploNev} - {item.VelemenyekSzama} kedvelés</Text>{/* Szereplő neve */}
                
              </View>
            )}
          />
        )}
      </View>
    );
  }
};

{/*<Text style={{color: 'white', fontSize: 45}}>Orbán egy geci!</Text>*/}