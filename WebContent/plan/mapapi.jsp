<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <div id="fonts_in_my_computer">
	<div id="map" style="width: 1165px;height: 860px;"></div>
	<p class="map_button">
	</p>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=902733415258a0d7c36d2b29f18ee014&libraries=services,clusterer,drawing"></script>
	<script>
		/* 부산 */
		if(window.location.search == "?region=busan"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(35.1629, 129.045), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
				    {
				        title: '가덕도', 
				        latlng: new kakao.maps.LatLng(35.0229638330, 128.8169442487)
				    },
				    {
				        title: '가덕도 등대', 
				        latlng: new kakao.maps.LatLng(35.0006471157, 128.8295937487)
				    },
				    {
				        title: '가덕도 연대봉', 
				        latlng: new kakao.maps.LatLng(35.0317518247, 128.8216713782)
				    },
				    {
				        title: '가덕도대항인공동굴',
				        latlng: new kakao.maps.LatLng(35.0133095493, 128.8274685924)
				    },
				    {
				        title: '가덕해양파크휴게소',
				        latlng: new kakao.maps.LatLng(35.0230581337, 128.8096309940)
				    },
				    {
				        title: '가야공원 \/ 가야산책공원',
				        latlng: new kakao.maps.LatLng(35.1483453258, 129.0276891748)
				    },
				    {
				        title: '감만시민공원',
				        latlng: new kakao.maps.LatLng(35.1097087416, 129.0687505471)
				    },
				    {
				        title: '감지해변',
				        latlng: new kakao.maps.LatLng(35.0625336062, 129.0764900502)
				    },
				    {
				        title: '감천동편부두 \/ 감천항',
				        latlng: new kakao.maps.LatLng(35.0547971892, 129.0128152394)
				    },
				    {
				        title: '감천사(부산)',
				        latlng: new kakao.maps.LatLng(35.1833036953, 129.0912632411)
				    },
				    {
				        title: '곰내연밭',
				        latlng: new kakao.maps.LatLng(35.2954092493, 129.1695450043)
				    },
				    {
				        title: '공수어촌체험마을',
				        latlng: new kakao.maps.LatLng(35.1844585662, 129.2111944455)
				    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
	
		 /* 춘천 */
	if(window.location.search == "?region=chuncheon"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.888641, 127.739949), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '강아지숲', 
		        latlng: new kakao.maps.LatLng(37.7364886333, 127.6620400154)
		    },
		    {
		        title: '강원 경찰충혼탑', 
		        latlng: new kakao.maps.LatLng(37.9165380832, 127.7126856416)
		    },
		    {
		        title: '강원도립화목원', 
		        latlng: new kakao.maps.LatLng(37.9233347533, 127.7254731639)
		    },
		    {
		        title: '강원숲체험장',
		        latlng: new kakao.maps.LatLng(37.9630563077, 127.6397214646)
		    },
		    {
		        title: '강촌 출렁다리공원',
		        latlng: new kakao.maps.LatLng(37.8136014070, 127.6358095763)
		    },
		    {
		        title: '강촌랜드',
		        latlng: new kakao.maps.LatLng(37.8115238609, 127.6352957953)
		    },
		    {
		        title: '강촌유원지',
		        latlng: new kakao.maps.LatLng(37.8157038798, 127.6325486998)
		    },
		    {
		        title: '강촌환경생태연못',
		        latlng: new kakao.maps.LatLng(37.8084715001, 127.6386344705)
		    },
		    {
		        title: '건봉령승호대',
		        latlng: new kakao.maps.LatLng(37.9555307882, 127.8621819771)
		    },
		    {
		        title: '공지천 조각공원',
		        latlng: new kakao.maps.LatLng(37.8747429257, 127.7115342090)
		    },
		    {
		        title: '공지천(황금비늘테마거리)',
		        latlng: new kakao.maps.LatLng(37.8746484542, 127.7094955095)
		    },
		    {
		        title: '공지천유원지',
		        latlng: new kakao.maps.LatLng(37.8746901179, 127.7096010535)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		 
		/* 대구 */
		if(window.location.search == "?region=daegu"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(35.825585, 128.559658), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '가창 찐빵 골목', 
		        latlng: new kakao.maps.LatLng(35.8027142041, 128.6222232980)
		    },
		    {
		        title: '가창저수지', 
		        latlng: new kakao.maps.LatLng(35.7978145763, 128.6123965208)
		    },
		    {
		        title: '감삼못공원', 
		        latlng: new kakao.maps.LatLng(35.8586426972, 128.5522334637)
		    },
		    {
		        title: '강정고령보',
		        latlng: new kakao.maps.LatLng(35.8411597415, 128.4650416326)
		    },
		    {
		        title: '경극고택',
		        latlng: new kakao.maps.LatLng(35.9074757619, 128.6866758144)
		    },
		    {
		        title: '경상감영공원',
		        latlng: new kakao.maps.LatLng(35.8720530283, 128.5923073375)
		    },
		    {
		        title: '고산골',
		        latlng: new kakao.maps.LatLng(35.8191841675, 128.6007580634)
		    },
		    {
		        title: '고산골 메타쉐콰이어길',
		        latlng: new kakao.maps.LatLng(35.8300524321, 128.6034408589)
		    },
		    {
		        title: '고산서당',
		        latlng: new kakao.maps.LatLng(35.8526436717, 128.7186911959)
		    },
		    {
		        title: '공룡공원',
		        latlng: new kakao.maps.LatLng(35.8300524321, 128.6034408589)
		    },
		    {
		        title: '공항교강변공원',
		        latlng: new kakao.maps.LatLng(35.9012142369, 128.6259646705)
		    },
		    {
		        title: '관덕정',
		        latlng: new kakao.maps.LatLng(35.8281018970, 128.5624306351)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 강릉 */
		if(window.location.search == "?region=gangneung"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.762000, 128.889408), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '갈골한과마을 명인의 집', 
		        latlng: new kakao.maps.LatLng(37.8245147710, 128.8432831780)
		    },
		    {
		        title: '강남축구공원', 
		        latlng: new kakao.maps.LatLng(37.7436587117, 128.9074798939)
		    },
		    {
		        title: '강릉 경포대', 
		        latlng: new kakao.maps.LatLng(37.7955691591, 128.8965126086)
		    },
		    {
		        title: '강릉 경포해수욕장',
		        latlng: new kakao.maps.LatLng(37.8057293080, 128.9074446419)
		    },
		    {
		        title: '강릉 굴산사지',
		        latlng: new kakao.maps.LatLng(37.7072681694, 128.8918046506)
		    },
		    {
		        title: '강릉 녹색도시체험센터',
		        latlng: new kakao.maps.LatLng(37.7521848860, 128.8758158157)
		    },
		    {
		        title: '강릉 대공산성',
		        latlng: new kakao.maps.LatLng(37.7360428019, 128.7582269095)
		    },
		    {
		        title: '강릉 대기리마을',
		        latlng: new kakao.maps.LatLng(37.5878658813, 128.7785935029)
		    },
		    {
		        title: '강릉 대도호부 관아',
		        latlng: new kakao.maps.LatLng(37.7532767444, 128.8921226461)
		    },
		    {
		        title: '강릉 명주동 거리',
		        latlng: new kakao.maps.LatLng(37.7511381142, 128.8927254362)
		    },
		    {
		        title: '강릉 모래내 한과마을(갈골한과)',
		        latlng: new kakao.maps.LatLng(37.8138296931, 128.8328344506)
		    },
		    {
		        title: '강릉 복사꽃마을',
		        latlng: new kakao.maps.LatLng(37.8801348222, 128.7773762919)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 경주 */
		if(window.location.search == "?region=gyeongju"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(35.837661, 129.225966), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '감포선착장', 
		        latlng: new kakao.maps.LatLng(35.8074523833, 129.5016738088)
		    },
		    {
		        title: '감포항', 
		        latlng: new kakao.maps.LatLng(35.8078329413, 129.5040374805)
		    },
		    {
		        title: '건천편백나무숲', 
		        latlng: new kakao.maps.LatLng(35.8330220248, 129.0774046752)
		    },
		    {
		        title: '경산서원',
		        latlng: new kakao.maps.LatLng(36.0032921901, 129.2521317055)
		    },
		    {
		        title: '경상북도 산림환경연구원',
		        latlng: new kakao.maps.LatLng(35.8117358011, 129.2388605710)
		    },
		    {
		        title: '경주 감은사지',
		        latlng: new kakao.maps.LatLng(35.7482196956, 129.4768554542)
		    },
		    {
		        title: '경주 경덕왕릉',
		        latlng: new kakao.maps.LatLng(35.7611794371, 129.1881497815)
		    },
		    {
		        title: '경주 경애왕릉',
		        latlng: new kakao.maps.LatLng(35.7961369876, 129.2084636775)
		    },
		    {
		        title: '경주 계림',
		        latlng: new kakao.maps.LatLng(35.8326469552, 129.2189978270)
		    },
		    {
		        title: '경주 골굴암 마애여래좌상',
		        latlng: new kakao.maps.LatLng(35.8030343852, 129.4055767822)
		    },
		    {
		        title: '경주 교촌마을',
		        latlng: new kakao.maps.LatLng(35.8296749875, 129.2147232863)
		    },
		    {
		        title: '경주 구정동 방형분',
		        latlng: new kakao.maps.LatLng(35.7785850826, 129.2969480960)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		/* 인천 */
		if(window.location.search == "?region=incheon"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.461296, 126.704950), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '감중공원', 
		        latlng: new kakao.maps.LatLng(37.4932378921, 126.6736203249)
		    },
		    {
		        title: '갑곶돈대', 
		        latlng: new kakao.maps.LatLng(37.7335377029, 126.5171140395)
		    },
		    {
		        title: '갑곶순교성지', 
		        latlng: new kakao.maps.LatLng(37.7341959658, 126.5174945418)
		    },
		    {
		        title: '강화 갑곶리 탱자나무',
		        latlng: new kakao.maps.LatLng(37.7541460175, 126.4948543916)
		    },
		    {
		        title: '강화 고인돌 유적 [유네스코 세계문화유산]',
		        latlng: new kakao.maps.LatLng(37.7734344221, 126.4374730037)
		    },
		    {
		        title: '강화 달빛동화마을',
		        latlng: new kakao.maps.LatLng(37.6803032508, 126.4164969660)
		    },
		    {
		        title: '강화 덕진진',
		        latlng: new kakao.maps.LatLng(37.6496170469, 126.5237018914)
		    },
		    {
		        title: '강화 동막해변',
		        latlng: new kakao.maps.LatLng(37.5932918804, 126.4570623331)
		    },
		    {
		        title: '강화 사기리 탱자나무',
		        latlng: new kakao.maps.LatLng(37.6165030596, 126.4567228313)
		    },
		    {
		        title: '강화 서도 중앙교회',
		        latlng: new kakao.maps.LatLng(37.6436850663, 126.2442776542)
		    },
		    {
		        title: '강화 석수문',
		        latlng: new kakao.maps.LatLng(37.7468243111, 126.4756785763)
		    },
		    {
		        title: '강화 선원사지',
		        latlng: new kakao.maps.LatLng(37.7188250962, 126.4924889291)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 제주 */
		if(window.location.search == "?region=jeju"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.375967, 126.539432), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '가마오름', 
		        latlng: new kakao.maps.LatLng(33.3056418997, 126.2470543070)
		    },
		    {
		        title: '가메창(암메)', 
		        latlng: new kakao.maps.LatLng(33.3209235283, 126.2460707194)
		    },
		    {
		        title: '가문이오름(감은이오름)', 
		        latlng: new kakao.maps.LatLng(33.4241699560, 126.7403699255)
		    },
		    {
		        title: '가새기오름',
		        latlng: new kakao.maps.LatLng(33.4889034625, 126.5039945305)
		    },
		    {
		        title: '가세오름',
		        latlng: new kakao.maps.LatLng(33.3314253030, 126.7815518045)
		    },
		    {
		        title: '가시오름',
		        latlng: new kakao.maps.LatLng(33.2236315617, 126.2500169782)
		    },
		    {
		        title: '가파도',
		        latlng: new kakao.maps.LatLng(33.1664326869, 126.2735884192)
		    },
		    {
		        title: '각시바우오름',
		        latlng: new kakao.maps.LatLng(33.2767800518, 126.5269445463)
		    },
		    {
		        title: '갈마못(갈뫼못)',
		        latlng: new kakao.maps.LatLng(33.3870224256, 126.8115590479)
		    },
		    {
		        title: '갈중이(천연염색체험)',
		        latlng: new kakao.maps.LatLng(33.2351312882, 126.3136806420)
		    },
		    {
		        title: '감낭오름',
		        latlng: new kakao.maps.LatLng(33.3220583004, 126.3457009272)
		    },
		    {
		        title: '갑선이오름',
		        latlng: new kakao.maps.LatLng(33.3621052416, 126.7810400382)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 전주 */
		if(window.location.search == "?region=jeonju"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(35.827304, 127.116139), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '객사길', 
		        latlng: new kakao.maps.LatLng(35.8176666120, 127.1437287440)
		    },
		    {
		        title: '건지산', 
		        latlng: new kakao.maps.LatLng(35.8513293678, 127.1391338273)
		    },
		    {
		        title: '경기전', 
		        latlng: new kakao.maps.LatLng(35.8152058871, 127.1498643734)
		    },
		    {
		        title: '관성묘',
		        latlng: new kakao.maps.LatLng(35.7961332505, 127.1610833184)
		    },
		    {
		        title: '기지제',
		        latlng: new kakao.maps.LatLng(35.8460758643, 127.0627518776)
		    },
		    {
		        title: '기지제 수변공원',
		        latlng: new kakao.maps.LatLng(35.8413069939, 127.0645268438)
		    },
		    {
		        title: '나들목 가족공원',
		        latlng: new kakao.maps.LatLng(35.8763222964, 127.0555461746)
		    },
		    {
		        title: '남고사(전주)',
		        latlng: new kakao.maps.LatLng(35.7997439139, 127.1589500803)
		    },
		    {
		        title: '남천교 청연루',
		        latlng: new kakao.maps.LatLng(35.8107203432, 127.1531753073)
		    },
		    {
		        title: '다가공원',
		        latlng: new kakao.maps.LatLng(35.8140613627, 127.1377932551)
		    },
		    {
		        title: '덕진공원',
		        latlng: new kakao.maps.LatLng(35.8475156135, 127.1218687977)
		    },
		    {
		        title: '동고사(전주)',
		        latlng: new kakao.maps.LatLng(35.8095957238, 127.1677212648)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		/* 서울 */
		if(window.location.search == "?region=seoul"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.564913, 126.980268), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '가회동성당', 
		        latlng: new kakao.maps.LatLng(37.5820858828, 126.9846616856)
		    },
		    {
		        title: '간데메공원', 
		        latlng: new kakao.maps.LatLng(37.5728520032, 127.0490977427)
		    },
		    {
		        title: '갈산근린공원', 
		        latlng: new kakao.maps.LatLng(37.5061176314, 126.8684105358)
		    },
		    {
		        title: '감로암(서울)',
		        latlng: new kakao.maps.LatLng(37.5753148419, 127.0066015446)
		    },
		    {
		        title: '강남',
		        latlng: new kakao.maps.LatLng(37.4970465429, 127.0281573537)
		    },
		    {
		        title: '강남 마이스 관광특구',
		        latlng: new kakao.maps.LatLng(37.5118092746, 127.0591318945)
		    },
		    {
		        title: '강남 시티투어 (트롤리버스)',
		        latlng: new kakao.maps.LatLng(37.5269874797, 127.0264344408)
		    },
		    {
		        title: '강동예찬시비',
		        latlng: new kakao.maps.LatLng(37.5426873535, 127.1207004140)
		    },
		    {
		        title: '강변스파랜드',
		        latlng: new kakao.maps.LatLng(37.5348266305, 127.0916116181)
		    },
		    {
		        title: '강서습지생태공원',
		        latlng: new kakao.maps.LatLng(37.5860879769, 126.8171490732)
		    },
		    {
		        title: '강서한강공원',
		        latlng: new kakao.maps.LatLng(37.5860879769, 126.8171490732)
		    },
		    {
		        title: '개봉 유수지',
		        latlng: new kakao.maps.LatLng(37.4922691511, 126.8634058253)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 속초 */
		if(window.location.search == "?region=sokcho"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(38.203205, 128.576188), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '계조암(속초)', 
		        latlng: new kakao.maps.LatLng(38.1778584536, 128.4848963314)
		    },
		    {
		        title: '금강굴', 
		        latlng: new kakao.maps.LatLng(38.1735618013, 128.4884989154)
		    },
		    {
		        title: '다이나믹 메이즈 (속초점)', 
		        latlng: new kakao.maps.LatLng(38.2055364158, 128.5173452990)
		    },
		    {
		        title: '대포마을',
		        latlng: new kakao.maps.LatLng(38.1758166221, 128.6072936101)
		    },
		    {
		        title: '대포항',
		        latlng: new kakao.maps.LatLng(38.1749528373, 128.6074602892)
		    },
		    {
		        title: '대포항 전망대',
		        latlng: new kakao.maps.LatLng(38.1760054678, 128.6061992595)
		    },
		    {
		        title: '동명동성당',
		        latlng: new kakao.maps.LatLng(38.2135064568, 128.5958129203)
		    },
		    {
		        title: '동명마을',
		        latlng: new kakao.maps.LatLng(38.2113594328, 128.5931493405)
		    },
		    {
		        title: '동명항',
		        latlng: new kakao.maps.LatLng(38.2114151114, 128.5998181770)
		    },
		    {
		        title: '등대해변',
		        latlng: new kakao.maps.LatLng(38.2136620888, 128.6006513643)
		    },
		    {
		        title: '범바위',
		        latlng: new kakao.maps.LatLng(38.2142727422, 128.5808225913)
		    },
		    {
		        title: '보광사(속초)',
		        latlng: new kakao.maps.LatLng(38.2133645974, 128.5850361257)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 영월 */
		if(window.location.search == "?region=yeongwol"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.185174, 128.462411), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '강변저류지', 
		        latlng: new kakao.maps.LatLng(37.1802648936, 128.4483742907)
		    },
		    {
		        title: '강원 영월 김삿갓면 [슬로시티]', 
		        latlng: new kakao.maps.LatLng(37.1256818109, 128.5701372137)
		    },
		    {
		        title: '강원도 탄광문화촌', 
		        latlng: new kakao.maps.LatLng(37.2631362582, 128.4669118411)
		    },
		    {
		        title: '계족산(영월)',
		        latlng: new kakao.maps.LatLng(37.1618151571, 128.4969260372)
		    },
		    {
		        title: '고고산',
		        latlng: new kakao.maps.LatLng(37.2231097851, 128.5854690604)
		    },
		    {
		        title: '고씨굴 (강원고생대 국가지질공원)',
		        latlng: new kakao.maps.LatLng(37.1307444591, 128.5353790658)
		    },
		    {
		        title: '고진하 가옥',
		        latlng: new kakao.maps.LatLng(37.1740949988, 128.3868966548)
		    },
		    {
		        title: '구룡산(강원)',
		        latlng: new kakao.maps.LatLng(37.3298539120, 128.1907402567)
		    },
		    {
		        title: '구봉대산',
		        latlng: new kakao.maps.LatLng(37.3017746722, 128.2361869928)
		    },
		    {
		        title: '국지산',
		        latlng: new kakao.maps.LatLng(37.1401139206, 128.4464006515)
		    },
		    {
		        title: '금강공원에코스튜디오',
		        latlng: new kakao.maps.LatLng(37.1860481078, 128.4772659729)
		    },
		    {
		        title: '금강정',
		        latlng: new kakao.maps.LatLng(37.1852871070, 128.4784353347)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}
		
		/* 여수 */
		if(window.location.search == "?region=yeosu"){	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(34.761461, 127.662858), // 지도의 중심좌표
		        level: 9 // 지도의 확대 레벨
		    };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 
		// 마커를 표시할 위치와 title 객체 배열입니다 
		var positions = [
			{
		        title: '거문도', 
		        latlng: new kakao.maps.LatLng(34.0274901869, 127.3089480580)
		    },
		    {
		        title: '거문도 등대', 
		        latlng: new kakao.maps.LatLng(34.0084314114, 127.3219612742)
		    },
		    {
		        title: '거문도 신선바위', 
		        latlng: new kakao.maps.LatLng(34.0123585069, 127.3072485707)
		    },
		    {
		        title: '거문도(유림)해수욕장',
		        latlng: new kakao.maps.LatLng(34.0198270666, 127.3039792300)
		    },
		    {
		        title: '거북선공원',
		        latlng: new kakao.maps.LatLng(34.7606283453, 127.6667403776)
		    },
		    {
		        title: '거북선대교',
		        latlng: new kakao.maps.LatLng(34.7364352647, 127.7495115300)
		    },
		    {
		        title: '고소동 천사벽화마을',
		        latlng: new kakao.maps.LatLng(34.7383571176, 127.7405900393)
		    },
		    {
		        title: '국동항',
		        latlng: new kakao.maps.LatLng(34.7263609059, 127.7213781344)
		    },
		    {
		        title: '국동항수변공원',
		        latlng: new kakao.maps.LatLng(34.7278385810, 127.7250111131)
		    },
		    {
		        title: '금오도',
		        latlng: new kakao.maps.LatLng(34.5225925094, 127.7494836083)
		    },
		    {
		        title: '낭도',
		        latlng: new kakao.maps.LatLng(34.6094126875, 127.5486434091)
		    },
		    {
		        title: '낭도대교(여수)',
		        latlng: new kakao.maps.LatLng(34.6253580492, 127.5441822888)
		    }
				];

		// 마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		    
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    	});
			}
		}	
 	</script>
  </div>		
</body>
</html>