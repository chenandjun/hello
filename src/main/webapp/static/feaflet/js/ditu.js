var normals = L.tileLayer('http://api.aeromap.cn/fullmap/normal/{z}/{y}/{x}?X-API-KEY={key}',{key:'583a939c-4976-4ef0-9a1d-8039a96b48c7'}),
			satellites = L.tileLayer('http://api.aeromap.cn/fullmap/satellite/{z}/{y}/{x}?X-API-KEY={key}',{key:'583a939c-4976-4ef0-9a1d-8039a96b48c7'}),
			terrains = L.tileLayer('http://api.aeromap.cn/fullmap/terrain/{z}/{y}/{x}?X-API-KEY={key}',{key:'583a939c-4976-4ef0-9a1d-8039a96b48c7'});
		var map = L.map('map', {  
    		center: [31.15, 121.10],  
    		zoom: 10,  
    		layers: [normals]
		});
		var baseLayers = {
    		"地图": normals,
    		"影像": satellites,
    		"高程图":terrains
		};

		var marker = L.marker([31.15,121.10]).addTo(map);
		var overlayLayers = {
    		"公司": marker
		};
		L.control.layers(baseLayers, null).setPosition('topleft').addTo(map);