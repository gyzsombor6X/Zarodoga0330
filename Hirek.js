import React, { Component } from 'react';
import { ActivityIndicator, FlatList, Text, View, Image, Button, Linking, TextInput } from 'react-native';

export default class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      data: [],
      isLoading: true,
      nyelv: "hu"
    };
  }

  async getNews(ertek) {
    try {
      const response = await fetch('https://newsapi.org/v2/everything?q=starwars&sortBy=publishedAt&apiKey=8c82b107ba154dd18974cceacb4f82bf');
      const json = await response.json();
      //console.log(json)
      this.setState({ data: json.articles });
    } catch (error) {
      console.log(error);
    } finally {
      this.setState({ isLoading: false });
    }
  }

  componentDidMount() {
    this.getNews(this.state.nyelv);
                                                                                                                                                             //console.log("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1985\nWindows 98\ngyzsombor6X\nStar Wars adatbázis\n2022.11.15.")
  }

  valtoztat(szoveg)
  {
    this.setState({nyelv:szoveg})
  }

  kereses=()=>
  {
    this.getMovies();
  }

  nyelv_valtoztat_pickerrel=(ertek)=>
  {
    this.setState({nyelv:ertek})
    this.getNews(ertek)
  }

  render() {
    const { data, isLoading } = this.state;

    return (
      <View style={{ flex: 1, padding: 24, backgroundColor: 'black' }}>
        <Text style={{color: 'orange', fontSize: 40, fontWeight: 'bold', textAlign: 'center'}}>Star Wars hírek</Text>
        
        {isLoading ? <View><ActivityIndicator/>{/*<Image style={{width:300,height:500,alignSelf:"center"}} source={require('./Teszt_logo.jpg')} />*/}</View> : (
          <FlatList
            data={data}
            keyExtractor={({ id }, index) => id}
            renderItem={({ item }) => (
              <View>
                <Image source={{uri:item.urlToImage}} style={{width:300, height:300, alignSelf: "center"}} />
                <Text style={{color: 'white', fontSize: 25, fontWeight: 'bold', textAlign: 'center'}}>{item.title}</Text>
                <Text style={{color: 'lightblue', fontSize: 15, textAlign: 'justify'}}>{item.description}</Text>
                <Text style={{color: '#c5b4e3', fontSize: 12, textAlign: 'justify'}}>{item.content}</Text>
                <Text style={{color: 'cyan', fontSize: 12, textAlign: 'right'}}>{item.publishedAt}</Text>
                <Text style={{color: 'orange', fontSize: 12, textAlign: 'right'}}>{item.source.name}</Text>
                <Button onPress={() => { Linking.openURL(item.url)}}title="Cikk olvasása tovább..."/>
                <View style={{borderBottomWidth: 1, borderBottomColor: "black"}}></View>
                
                
                {/* Üres sor */}
                <Text style={{color: 'white', fontSize: 15}}></Text> 
              </View>
            )}
          />
        )}
      </View>
    );
  }
};