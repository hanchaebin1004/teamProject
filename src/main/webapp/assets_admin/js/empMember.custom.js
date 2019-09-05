$(function () {
	    if ($("#radial-chart").length) {
	        a = {
	            chart: {
	                height: 230,
	                type: "radialBar"
	            },
	            series: [chaebin],
	            colors: ["#696ffb"],
	            plotOptions: {
	                radialBar: {
	                    hollow: {
	                        margin: 0,
	                        size: "70%",
	                        background: "rgba(255,255,255,0.1)"
	                    },
	                    track: {
	                        dropShadow: {
	                            enabled: !0,
	                            top: 2,
	                            left: 0,
	                            blur: 4,
	                            opacity: .02
	                        }
	                    },
	                    dataLabels: {
	                        name: {
	                            offsetY: -10,
	                            color: "#adb5bd",
	                            fontSize: "13px"
	                        },
	                        value: {
	                            offsetY: 5,
	                            color: "#000",
	                            fontSize: "20px",
	                            show: !0
	                        }
	                    }
	                }
	            },
	            fill: {
	                type: "gradient",
	                gradient: {
	                    shade: "dark",
	                    type: "vertical",
	                    gradientToColors: ["#87D4F9"],
	                    stops: [0, 100]
	                }
	            },
	            stroke: {
	                lineCap: "round"
	            },
	            labels: ["Progress"]
	        };
	        (r = new ApexCharts(document.querySelector("#radial-chart"), a)).render()
	    }
	});