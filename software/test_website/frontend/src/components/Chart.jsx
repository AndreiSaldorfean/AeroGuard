import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend } from "recharts";

function Chart({ station }) {
    console.log(station.arhivaDate)
    const data = station.arhivaDate.map((item) => {
        return {
            name: new Date(item.createdAt).toLocaleDateString(),
            concentratie: item.concentratie,
            temperatura: item.temperatura
        }
    })
    return (
        <div className="popup-container">
            <div className="popup h-auto w-auto">
                <LineChart
                    width={500}
                    height={300}
                    data={data}
                    margin={{
                        top: 5,
                        right: 30,
                        left: 20,
                        bottom: 5
                    }}
                >
                    <text x={500 / 2} y={20} fill="black" textAnchor="middle" dominantBaseline="central">
                        <tspan fontSize="14">{station.strada.replace("_", " ")}</tspan>
                    </text>
                    <CartesianGrid strokeDasharray="3 3" />
                    <XAxis dataKey="name" />
                    <YAxis />
                    <Tooltip />
                    <Legend />
                    <Line
                        type="monotone"
                        dataKey="concentratie"
                        stroke="#8884d8"
                        activeDot={{ r: 8 }}
                    />
                    <Line type="monotone" dataKey="temperatura" stroke="#82ca9d" />
                </LineChart>
            </div>
        </div>
    );

}
export default Chart;