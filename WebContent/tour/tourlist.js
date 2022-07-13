$(function(){
	getJson();
});

// json 함수 읽어오는 함수
function getJson() {
	// Seoul.json에서 데이터를 가져옴 -> function(data)로 처리 -> data에 저장
	$.getJSON("areaBasedList.json", function(data) {
		$.each(data, function(key, val) {
			if( key == "SID" ) {
				$("table").attr("border", "1");
				
				// API에서 받아 올 데이터들
				$("thead").append(
					"<tr>"+
						"<th>"+val.ADDR1+"</th>"+	
						"<th>"+val.AREACODE+"</th>"+	
						"<th>"+val.SIGUNGUCODE+"</th>"+
						"<th>"+val.FIRSTIMAGE2+"</th>"+	
						"<th>"+val.READCOUNT+"</th>"+	
						"<th>"+val.TITLE+"</th>"+	
					"</tr>"
				);
			} else {
				var list = val;		// list 변수 : 배열로 정의
				for( var i=0; i<list.length; i++ ) {
					var str = list[i];		// str 변수 : list 배열 안에 있는 하나의 json 데이터
					$("tbody").append(
						"<tr>"+
							"<td>"+str.addr1+"</td>"+
							"<td>"+str.areacode+"</td>"+
							"<td>"+str.sigungucode+"</td>"+
							"<td>"+str.firstimage2+"</td>"+
							"<td>"+str.readcount+"</td>"+
							"<td>"+str.title+"</td>"+
							// db에 값들을 ';'로 나눠서 넘겨줌
							"<input type='hidden' name='list' value='"+
							str.addr1+";"+str.areacode+";"+str.sigungucode+";"
							+str.firstimage2+";"+str.readcount+";"+str.title+"'>"+
						"</tr>"
					);
				}
			}
		});
	});
}