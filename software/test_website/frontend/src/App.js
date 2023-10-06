import { useEffect, useState } from "react";

import AirQCard from "./components/AirQCard";
import NavBar from "./components/NavBar";
import Footer from "./components/Footer";
import Loader from "./components/Loader";
import AirAlert from "./components/AirAlert";
import Chart from "./components/Chart";
import io from 'socket.io-client';



function App() {

  const [stations, setStations] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [openId, setOpenId] = useState(null);
  const [openLocation, setOpenLocation] = useState(null);

  useEffect(() => {
    var socket = io.connect('http://192.168.51.90:4000');
    socket.on('connect', (data) => {
      console.log('Connected to server');
      socket.on('updatedLocations', (data) => {
        const updatedStations = stations.map((station) => {
          const updatedStation = data.find((updatedStation) => updatedStation.id === station.id);
          if (updatedStation) {
            return updatedStation;
          }
          return station;
        });
        if (updatedStations.length === 0) {
          setStations(stations);
        }
        setStations(updatedStations);
      });
      socket.on('disconnect', () => {
        console.log('Disconnected from server');
      });
    });
  });

  useEffect(() => {
    async function fetchData() {
      try {
        setIsLoading(true);
        const response = await fetch(`http://192.168.51.90:4000/`);
        const data = await response.json();
        setStations(data);
      } catch (error) {
        console.log(error);
      } finally {
        setIsLoading(false);
      }
    };
    fetchData();
  }, []);

  function handleOpenId(id) {
    setOpenId(id);
  }

  function handleOpenLocation(station) {
    setOpenLocation(station);
  }

  return (
    <div onClick={() => openId ? handleOpenId(null) : null} className={`App flex flex-col h-screen`}>
      <NavBar />
      {openId !== null && openLocation !== null &&
        <div className="fixed top-0 left-0 w-full h-full bg-black bg-opacity-50 z-10">
          <div className="flex justify-center items-center h-full">
            <h2 className="text-color-white">{openLocation.strada}</h2>
            <Chart station={openLocation} />
          </div>
        </div>}
      <div className="flex justify-between px-5 py-5">
        <div className="grid grid-cols-1 gap-1">
          {stations.map((station) => (
            station.concentratie >= 100 && <AirAlert key={station.id + 1} strada={station.strada.replace("_", " ")} concentratie={station.concentratie} />
          ))}
        </div>
      </div>
      {
        isLoading ? <Loader /> :
          <div className={`grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-1 justify-items-center content-center px-3 py-3 h-auto flex-grow`}>
            {stations.map((station) => (
              <AirQCard key={station.id + 1} station={station} id={station.id + 1} onOpenId={handleOpenId} onOpenLocation={handleOpenLocation} />
            ))}
          </div>
      }
      <Footer />
    </div>
  );
}

export default App;
