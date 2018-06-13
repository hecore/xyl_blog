//var dom = document.getElementById("xytj");
var dom = document.getElementById("xytj");
//var dom=$("#xytj");
var myChart = echarts.init(dom);
var taskname=[],seriesdata=[];
var userList=dom.attributes.val.nodeValue;
var boj= eval('(' + userList.replace(new RegExp("=", "g"), ":") + ')')
option = {
	    backgroundColor: '#344b58',
	    title: {
	        text: '太原校友录',
	        x: 'left',
	        y:'bottom',
	        top:"1%",
	        textStyle: {
	        	fontSize : 10,
	            color: '#fff'
	        }
	    },
	     tooltip: {
			          trigger: 'item',
	      	},
	    series: [
	        {
	            name:'年龄分布',
	            type:'pie',
	            tooltip : {
	       	 	trigger: 'item',
	       	 	formatter: "{b} :{c}人   占比 {d}%",
	         	textStyle: {
	                    fontSize:14
	                }
	    	},
	            radius: ['30%', '40%'],
				center: ['50%', '50%'],
				 color: ['#86D560','#00acee','#52cdd5','#79d9f1','#a7e7ff','#c8efff','#AF89D6', '#59ADF3', '#FFCC67'],
				 data:boj
	        }]
	    }

	    myChart.setOption(option, true);


