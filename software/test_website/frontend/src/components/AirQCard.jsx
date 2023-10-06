
function AirQCard({ station, id, onOpenId, onOpenLocation }) {

    const { strada, concentratie, temperatura, updatedAt } = station;
    const date = new Date(updatedAt).toLocaleString();

    function handleOpenLocation() {
        onOpenId(id);
        onOpenLocation(station);
    }
    return (
        <a href="#" onClick={handleOpenLocation} className="block p-6 bg-white border border-gray-200 rounded-lg shadow-lg hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700 min-w-full min-h-full" >
            <h5 className="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{strada.replace("_", " ")}</h5>
            <div className="flex flex-row justify-between">
                <p className="font-normal text-gray-700 dark:text-gray-400">
                    {concentratie < 400 ? <span className="px-2 py-1 font-bold text-green-800 bg-green-100 rounded-full">{concentratie} - Normal outdoor</span> : null}
                    {concentratie >= 400 && concentratie < 1000 ? <span className="px-2 py-1 font-bold text-yellow-800 bg-yellow-100 rounded-full">{concentratie} - Normal indoor</span> : null}
                    {concentratie >= 1000 && concentratie < 2000 ? <span className="px-2 py-1 font-bold text-orange-800 bg-orange-100 rounded-full">{concentratie} - Poor air quality</span> : null}
                    {concentratie >= 2000 && concentratie < 5000 ? <span className="px-2 py-1 font-bold text-red-800 bg-red-100 rounded-full">{concentratie} - Unhealthy</span> : null}
                    {concentratie >= 5000 && concentratie < 50000 ? <span className="px-2 py-1 font-bold text-purple-800 bg-purple-100 rounded-full">{concentratie} - Very Unhealthy</span> : null}
                    {concentratie > 100000 ? <span className="px-2 py-1 font-bold text-rose-800 bg-rose-100 rounded-full">{concentratie} - Hazardous</span> : null}
                    {concentratie === '-' ? <span className="px-2 py-1 font-bold rounded-full">No data</span> : null}
                </p>
                <p><span className="px-3 py-1 font-bold text-yellow-800 bg-yellow-200 rounded-full">Temp: {temperatura}</span></p>
            </div>
            {updatedAt ? <p className="text-sm font-normal text-gray-700 dark:text-gray-400"><br></br>Last updated: {date}</p> : null}
        </a>
    )
}

export default AirQCard;