import { useEffect, useState } from "react";

import AirQCard from "./components/AirQCard";
import NavBar from "./components/NavBar";
import Footer from "./components/Footer";
import Loader from "./components/Loader";
import RefreshButton from "./components/RefreshButton";

function App() {

  const [stations, setStations] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [refreshBtn, setRefreshBtn] = useState(false);
  useEffect(() => {
    async function fetchData() {
      try {
        setIsLoading(true);
        const response = await fetch(`https://aeroguard-backend.vercel.app/`);
        const data = await response.json();
        setStations(data);
      } catch (error) {
        console.log(error);
      } finally {
        setIsLoading(false);
      }
    };
    fetchData();
  }, [refreshBtn]);

  function handleRefreshBtn() {
    setRefreshBtn(!refreshBtn);
  }

  return (
    <div className="App flex flex-col h-screen">
      <NavBar />
      <div className="flex justify-left px-5 py-5">
        <RefreshButton onClick={handleRefreshBtn} />
      </div>
      {isLoading ? <Loader /> :
        <div className={`grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-1 justify-items-center content-center px-3 py-3 h-auto flex-grow`}>
          {stations.map((station) => (
            <AirQCard key={station.id} station={station} />
          ))}
        </div>
      }
      <Footer />
    </div>
  );
}

export default App;
