
function AirQCard({ station, onOpenId }) {

    const { strada, concentratie, updatedAt } = station;
    const date = new Date(updatedAt).toLocaleString();

    return (
        <a href="#" className="block p-6 bg-white border border-gray-200 rounded-lg shadow-lg hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700 min-w-full min-h-full">
            <h5 className="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{strada.replace("_", " ")}</h5>
            <p className="font-normal text-gray-700 dark:text-gray-400">
                {concentratie < 50 ? <span className="px-2 py-1 font-bold text-green-800 bg-green-100 rounded-full">{concentratie} - Good</span> : null}
                {concentratie >= 50 && concentratie < 100 ? <span className="px-2 py-1 font-bold text-yellow-800 bg-yellow-100 rounded-full">{concentratie} - Moderate</span> : null}
                {concentratie >= 100 && concentratie < 150 ? <span className="px-2 py-1 font-bold text-orange-800 bg-orange-100 rounded-full">{concentratie} - Unhealthy for Sensitive Groups</span> : null}
                {concentratie >= 150 && concentratie < 200 ? <span className="px-2 py-1 font-bold text-red-800 bg-red-100 rounded-full">{concentratie} - Unhealthy</span> : null}
                {concentratie >= 200 && concentratie < 300 ? <span className="px-2 py-1 font-bold text-purple-800 bg-purple-100 rounded-full">{concentratie} - Very Unhealthy</span> : null}
                {concentratie >= 300 ? <span className="px-2 py-1 font-bold text-maroon-800 bg-maroon-100 rounded-full">{concentratie} - Hazardous</span> : null}
                {concentratie === '-' ? <span className="px-2 py-1 font-bold text-gray-800 bg-gray-100 rounded-full">No data</span> : null}
            </p>
            {updatedAt ? <p className="text-sm font-normal text-gray-700 dark:text-gray-400">Last updated: {date}</p> : null}
        </a>
    )
}

export default AirQCard;