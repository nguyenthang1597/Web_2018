$(document).ready(() => {
    $.ajax({
        type: "GET",
        url: "http://localhost:3000/admin/report/catalog",
        success: function (data) {
            let labels = [];
            let datasets = [{
                    label: 'Số lượng bán',
                    backgroundColor: 'rgb(66, 244, 220)',
                    data: []
                },
                {
                    label: 'Số lượng còn lại',
                    backgroundColor: 'rgb(80, 65, 244)',
                    data: []
                }
            ];
            for (let i = 0; i < data.length; i++) {
                const element = data[i];
                labels.push(element.TenHang)
                datasets[0].data.push(element.SLBan);
                datasets[1].data.push(element.TongSL - element.SLBan);
            }
            let ctx = document.getElementById("income").getContext('2d');
            let myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: datasets
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

        }
    })



})