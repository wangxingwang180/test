<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/highcharts.css"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/highcharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/exporting.js"></script>
<title>HightChart</title>
<script type="text/javascript">
$(function () {
    $('#container').highcharts({
    	lang : {
    		printChart : '打印图表',
    		downloadPNG : '下载PNG图片',
    		downloadJPEG : '下载JPEG图片',
    		downloadPDF : '下载PDF文档',
    		downloadSVG : '下载SVG矢量图'
    	},
        chart: {
            zoomType: 'xy'
        },
        title: {
            text: '东京月平均气温和降雨'
        },
        subtitle: {
            text: '来源: WorldClimate.com'
        },
        xAxis: [{
            categories: ['一月', '二月', '三月', '四月', '五月', '六月',
                         '七月', '八月', '九月', '十月', '十一月', '十二月'],
            crosshair: true
        }],
        yAxis: [{ // Primary yAxis
            labels: {
                format: '{value}°C',
                style: {
                    color: 'red'
                }
            },
            title: {
                text: '温度',
                style: {
                    color: 'red'
                }
            }
        }, { // Secondary yAxis
            title: {
                text: '降雨',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            labels: {
                format: '{value} mm',
                style: {
                    color: Highcharts.getOptions().colors[0]
                }
            },
            opposite: true
        }],
        tooltip: {
            shared: true
        },
//         legend: {
//             layout: 'vertical',
//             align: 'left',
//             x: 120,
//             verticalAlign: 'top',
//             y: 100,
//             floating: false,
//             backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFF'
//         },
        series: [{
            name: '降雨',
            type: 'column',
            yAxis: 1,
            data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
            tooltip: {
                valueSuffix: ' mm'
            }
        }, {
            name: '温度',
            type: 'spline',
            data: [35.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6],
            tooltip: {
                valueSuffix: '°C'
            }
        }]
    });
});
</script>
</head>
<body>
	<div id="container" style="min-width:400px;height:400px"></div>
</body>
</html>