import React, { Component } from 'react';
import {StyleSheet, ActivityIndicator, FlatList, Text, View, Image, TouchableOpacity } from 'react-native';
const IP = require('./Ipcim');

export default class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      data: [],
      isLoading: true
    };
  }

  async Filmleszedo() {
    try {
      const response = await fetch(IP.ipcim+'star_wars_galeria');
      const json = await response.json();
      console.log(json)
      this.setState({ data: json });
    } catch (error) {
      console.log(error);
    } finally {
      this.setState({ isLoading: false });
    }
  }

  componentDidMount() {
    this.Filmleszedo();
  }

  filmvalaszto=(id)=>{
    /*alert(id)*/

    for (let elem of this.state.data){
      if (elem.id == id){
        alert('A '+elem.film_cim+' szereplői :'+elem.szereplok+'/nAz őket alakító színészek: '+elem.szineszek
        +'/nMegjelenés dátuma: '+elem.megjelenes+'/nJátékidő: '+elem.hossz+'/nGyártási költség: '+elem.koltseg+' millió dollár/nÖsszes bevétel: '
        +elem.bevetel+' millió dollár /nA film a(z) '+elem.trilogia+' trilógia része.')
      }
    }
  }


  render() {
    const { data, isLoading } = this.state;

    return (
      <View style={{ flex: 1, padding: 24 , marginTop:40}}>
        {isLoading ? <ActivityIndicator/> : (
          <View>
            <Text style={{fontSize:75,color:'darkred',textAlign:'center'}}>Galéria</Text>
          <FlatList
            data={data}
            keyExtractor={({ film_cim }, index) => film_cim}
            renderItem={({ item }) => (
              
              <View style={{marginBottom:30}}>
              
              <Image   source={{uri:IP.ipcim+item.galeria_kep}} style={{width:300,height:300,alignSelf:'center'}}   />
              <Text style={{fontSize:10,color:'darkred',textAlign:'center'}}>
                Film címe: {item.film_cim}
              </Text>         
              </View>
            )}
          />
          </View>
        )}
      </View>
    );
  }
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    paddingHorizontal: 10
  },
  button: {
    alignItems: "center",
    backgroundColor: "blue",
    padding: 10,
    marginLeft:30,
    marginRight:30
  },
  countContainer: {
    alignItems: "center",
    padding: 10
  }
});