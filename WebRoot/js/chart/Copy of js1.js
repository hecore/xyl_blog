//var dom = document.getElementById("xytj");
var dom = document.getElementById("xytj");
//var dom=$("#xytj");
var myChart = echarts.init(dom);
var taskname=[],seriesdata=[];
var userList=dom.attributes.val.nodeValue;
//var jsonuser = userList.substr(1,userList.length-1);
var cstring="[{name='北京', value=1}, {name='上海', value=1}]";
var cto=cstring.replace(new RegExp("=", "g"), ":");
var b='[{"name":"Mike","sex":"女","age":"29"},{"name":"Mike","sex":"女","age":"29"}]';
//var c='[{"name":"北京", "value":1}, {"name":"上海", "value":1}]';
//var bToObj=JSON.parse(c);
//alert(cto);
var boj= eval('(' + cto + ')')
//userList=userList.replace(/=/, /:/);//正则替换
//var userjson="data:"+userList;
//var datajson=eval(userjson);
//var jsonuser= JSON.parse(cstring);
//alert(jsonuser);
//userList=userList.substring(1,userList.length-1);
//userList="{"+userList.substring(1,userList.length-1)+"}";
//JSON.Parse("[1, 2, 3, 4]");
//var jsonuser=stringToJson(userList);   
 //    =JSON.parse(userList);
//eval('(' + userList + ')');
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


