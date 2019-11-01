	//时间戳转换
//	function add0(m){return m<10?'0'+m:m }
//	function formatDate(timestamp, flag)
//	{
//	  //timestamp是整数，否则要parseInt转换,不会出现少个0的情况
//	
//		var time = new Date(timestamp);
//		var year = time.getFullYear();
//		var month = time.getMonth()+1;
//		var date = time.getDate();
//		var hours = time.getHours();
//		var minutes = time.getMinutes();
//		var seconds = time.getSeconds();
//		if(flag == true){ //转化成"yyyy-MM-dd HH:mm:ss"
//	    	return year+'-'+add0(month)+'-'+add0(date)+' '+add0(hours)+':'+add0(minutes)+':'+add0(seconds);
//			
//		}
//		return year+'-'+add0(month)+'-'+add0(date) // "yyyy-MM-dd"
//	}
	
	
	function formatDate(timestamp, flag)
	{
		if(timestamp == null || timestamp == undefined){
			return "";
		}
		if(flag == true){ //转化成"yyyy-MM-dd HH:mm:ss"
	    	return timestamp.substring(0,19);
			
		}
		return timestamp.substring(0,10); // "yyyy-MM-dd"
	}
	
	//启用状态
	function formatStatus(status){
		if(status == 1){
			return "启用"
		}
		if(status == 2){
			return "不启用"
		}
		
	}
	
	//性别
	function formatSex(index){
		if(index == 1){
			return "男"
		}
		if(index == 2){
			return "女"
		}
	}
	
	function formatType(type){
		if(type == 1){
			return "学校"
		}
		if(type == 2){
			return "培训机构"
		}
	}
	
	function formatbukpStatus(status){
		if(status == 1){
			return "成功"
		}
		if(status == 2){
			return "失败"
		}
	}
	
	/*时间转成字符串*/
	function dateToString(now){  
	    var year = now.getFullYear();  
	    var month =(now.getMonth() + 1).toString();  
	    var day = (now.getDate()).toString();  
	    var hour = (now.getHours()).toString();  
	    var minute = (now.getMinutes()).toString();  
	    var second = (now.getSeconds()).toString();  
	    if (month.length == 1) {  
	        month = "0" + month;  
	    }  
	    if (day.length == 1) {  
	        day = "0" + day;  
	    }  
	    if (hour.length == 1) {  
	        hour = "0" + hour;  
	    }  
	    if (minute.length == 1) {  
	        minute = "0" + minute;  
	    }  
	    if (second.length == 1) {  
	        second = "0" + second;  
	    }  
	     var dateTime = year + month + day + hour + minute + second;  
	     return dateTime;  
	  }
	