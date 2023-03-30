const express = require('express')
const mysql = require('mysql')
const cors = require('cors')
const app = express()
const port = 3000
var connection

app.use(express.static('kepek'))

function kapcsolat() {
  connection= mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 's66_db'
  })
  connection.connect()
}

  
  




//app.use(express.static('kepek'))
app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
  res.send('<head><title>Star Wars adatbázis</title></head><body style="color: white; background-color: black;"><h1>Hello World!</h1><br><h1>Star Wars adatbázis</h1><h2><a href="http://nodejs.dszcbaross.edu.hu:24008/szereplok" target="_blank">Szereplők</a></h2><h2><a href="http://nodejs.dszcbaross.edu.hu:24008/vilagosoldal" target="_blank">Szereplők - világos oldal</a></h2><h2><a href="http://nodejs.dszcbaross.edu.hu:24008/sotetoldal" target="_blank">Szereplők - sötét oldal</a></h2><h2><a href="http://nodejs.dszcbaross.edu.hu:24008/kedvelesek" target="_blank">Kedvelések</a></h2><h2><a href="http://nodejs.dszcbaross.edu.hu:24008/teszt" target="_blank">Teszt</a></h2></body>')
  console.log("[Star Wars adatbázis - 2022.12.06.] Hello World!")
})


app.get('/szereplok', (req, res) => {
    kapcsolat()
    connection.query('SELECT starwars.id, name, side, birth_year, birth_planet, death_year, death_planet, gender, height, mass, eye_color, hair_color, skin_color, homeworld, image, WikipediaLink, WookiepediaLink, KaminopediaLink, created, edited, COUNT(name) AS "velemenyek" from starwars LEFT JOIN sw_velemenyek ON starwars.id = sw_velemenyek.Character_id GROUP BY name ORDER BY starwars.id', (err, rows, fields) => {
      if (err) console.log(err) 
    else {
        res.send(rows)
      console.log("[Star Wars adatbázis - 2022.12.06.] \"szereplok\" végpont megnyitva.")
      console.log("[Star Wars adatbázis - 2022.12.06.] Szereplők lekérdezve.")
    }
      
    })
    
    connection.end()
  })


app.get('/teszt', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from `szereplők teszt`', (err, rows, fields) => {
      if (err) console.log(err) 
    else {
        res.send(rows)
      console.log("[Star Wars adatbázis - 2022.12.06.] \"teszt\" végpont megnyitva.")
      console.log("[Star Wars adatbázis - 2022.12.06.] Szereplők (teszt) lekérdezve.")
    }
      
    })
    
    connection.end()
  })

app.get('/vilagosoldal', (req, res) => {
    kapcsolat()
    connection.query('SELECT * FROM `világos oldal`', (err, rows, fields) => {
      if (err) console.log(err) 
    else {
        res.send(rows)
      console.log("[Star Wars adatbázis - 2022.12.06.] \"vilagosoldal\" végpont megnyitva.")
      console.log("[Star Wars adatbázis - 2022.12.06.] Szereplők (világos oldal) lekérdezve.")
    }
      
    })
    
    connection.end()
  })

app.get('/sotetoldal', (req, res) => {
    kapcsolat()
    connection.query('SELECT * FROM `sötét oldal`', (err, rows, fields) => {
      if (err) console.log(err) 
    else {
        res.send(rows)
      console.log("[Star Wars adatbázis - 2022.12.06.] \"sotetoldal\" végpont megnyitva.")
      console.log("[Star Wars adatbázis - 2022.12.06.] Szereplők (sötét oldal) lekérdezve.")
    }
      
    })
    
    connection.end()
  })

app.get('/kedvelesek', (req, res) => {
    kapcsolat()
    connection.query('SELECT * FROM `szereplők velemeny`', (err, rows, fields) => {
      if (err) console.log(err) 
    else {
        res.send(rows)
      console.log("[Star Wars adatbázis - 2022.12.06.] \"kedvelesek\" végpont megnyitva.")
      console.log("[Star Wars adatbázis - 2022.12.06.] Kedvelések lekérdezve.")
    }
      
    })
    
    connection.end()
  })



app.post('/felvitel', (req, res) => {
    //console.log(req.body.bevitel1)

    const connection = mysql.createConnection({
      host: '192.168.0.200',
      user: 'u66_rm3DDq2u28',
      password: 'E!dUvUeQ53Tc+=.3LfO3Fbgr',
      database: 's66_db'
    })
    
    connection.connect()
    
    connection.query('INSERT INTO sw_velemenyek VALUES (NULL, "'+req.body.bevitel1+'");', (err, rows, fields) => {
      if (err) throw err
    
     
      res.send("Sikeres felvitel! A Kedvelések menüpont frissült.")
    })
    
    connection.end()
       
    
  })



//------------------------     film lekérdezése
/*app.get('/film', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from film', (err, rows, fields) => {
      if (err) throw err
    
      res.send(rows)
    })
    
    connection.end()
  })*/


/*app.get('/szav', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from film', (err, rows, fields) => {
      if (err) throw err
    
      res.send(rows)
    })
    
    connection.end()
  })*/
//-----------------------------------------  szavazat felvitel
  /*app.post('/szavazat', (req, res) => {
    kapcsolat()
    connection.query('insert into szavazat values (null, '+req.body.bevitel1+')', (err, rows, fields) => {
      if (err) throw err
    
      res.send("Sikerült a felvitel!")
    })
    
    connection.end()
  })*/

app.get('/o1g', (req, res) => {
  res.send('<head><title>Orbán egy geci!</title></head><body style="margin: 0px; background: black; color: white; height: 100%"><h1 style="text-align: center;">Orbán egy geci!</h1><br><br><br><br><br><br><br><br><br><br><img style="display: block;-webkit-user-select: none;margin: auto;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://polomania.hu/images/designs/tn3/bgcolor/Hivatalos-O1G-feher-99462.jpg"></body>')
  console.log("[Star Wars adatbázis - 2022.12.06.] Orbán egy geci!")
})



//Dávid backend végpontjai

app.get('/star_wars_filmek', (req, res) => {
  const mysql = require('mysql')
  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 's66_db'
  })
  
  connection.connect()
  
  connection.query('SELECT * from star_wars_filmek', (err, rows, fields) => {
    if (err) throw err
  
    res.send(rows)
  })

    connection.end()
  })


  app.get('/star_wars_komment', (req, res) => {
    const mysql = require('mysql')
    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's66_db'
  })
    
    connection.connect()
    
    connection.query('SELECT * from star_wars_komment', (err, rows, fields) => {
      if (err) throw err
    
      res.send(rows)
    })
      
      connection.end()
    })


    app.post('/star_wars_komment', (req, res) => {
      const mysql = require('mysql')
      const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 's66_db'
      })
      
      connection.connect()
      
      connection.query('insert into star_wars_komment values (null, "'+req.body.bevitel1+'","'+req.body.bevitel2+'","'+req.body.bevitel3+'")', (err, rows, fields) => {
        if (err) throw err
      
        res.send("Sikerült a felvitel!")
      })
      
      connection.end()
    })

    app.get('/star_wars_galeria', (req, res) => {
      const mysql = require('mysql')
      const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 's66_db'
      })
      
      connection.connect()
      
      connection.query('SELECT * FROM star_wars_galeria INNER JOIN star_wars_filmek ON star_wars_galeria.galeria_filmid =star_wars_filmek.id', (err, rows, fields) => {
        if (err) throw err
      
        res.send(rows)
      })
      
      connection.end()
    })

    app.get('/star_wars_jelenetek', (req, res) => {
      const mysql = require('mysql')
      const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 's66_db'
      })
      
      connection.connect()
      
      connection.query('SELECT * FROM star_wars_jelenetek INNER JOIN star_wars_filmek ON star_wars_jelenetek.videok_filmid=star_wars_filmek.id', (err, rows, fields) => {
        if (err) throw err
      
        res.send(rows)
      })
      
      connection.end()
    })





app.listen(port, () => {
  //console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                                       (@@@@@@@                                            .@@@@/                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                                          @@@@@                                            .@@@@/                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                 @@@@@@@@@@@              .@@@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@/                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                 &%&&&&&&#.               @@@@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@/                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                                        #@@@@@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@/                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                 @@@@@(              %@@@@@@@@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@/                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@                 @@@@@@@@                @@@@@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@/                                       @@@@@@@\n @@@@@@                 @@@@@@@@@@@                *@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@/                                       @@@@@@@\n @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n @@@@#     .@@@@@@                           /@@@@                                     @@@@%        @@@@@                          *@@@@@@@@@@@@@@@@&\n @@@@# .@@@@@%                               /@@@@                                     @@@@%        @@@@@                          *@@@@         @@@@/\n @@@@@@@@@@@/                                /@@@@                                     @@@@%        @@@@@                          *@@@@@@@@@@@@@@@&.\n @@@@#   /@@@@@#                             /@@@@                                     @@@@&        @@@@@                          *@@@@         %@@@@\n @@@@#      /@@@@@&                          /@@@@@@@@@@@@@@@%                          @@@@@@@@@@@@@@@@                           *@@@@@@@@@@@@@@@@@\n")
  console.log(`[Star Wars adatbázis - 2022.12.06.] Example app listening on port ${port}`)
  console.log("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1985\nWindows 98\ngyzsombor6X\nStar Wars adatbázis\n2022.11.06.")
})