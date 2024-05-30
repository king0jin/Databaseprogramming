document.getElementById('mainSelect').addEventListener('change', function() {
    const subMenuSelect = document.getElementById('subMenuSelect');
    if (this.value === 'MENU') {
        subMenuSelect.style.display = 'inline-block'; // 또는 'block'
    } else {
        subMenuSelect.style.display = 'none';
    }
    
    if (selectedValue === "PICKUPLIST") {
            // 선택된 값에 따라 페이지 이동
            window.location.href = "MS_manager.jsp"; // 페이지 경로를 문자열로 지정
    }
});

document.addEventListener("DOMContentLoaded", function() {
	// mainSelect 태그가 변경될 때 처리하는 이벤트 리스너
    document.getElementById("mainSelect").addEventListener("change", function() {
		var selectedValue = this.value;
        if (selectedValue === "MENU") {
			document.getElementById("subMenuSelect").style.display = "inline";
        } else {
			document.getElementById("subMenuSelect").style.display = "none";
			}
   		
   });

   // subMenuSelect 태그가 변경될 때 처리하는 이벤트 리스너
   document.getElementById("subMenuSelect").addEventListener("change", function() {
     	var selectedValue = this.value;
        if (selectedValue) {
          	// 선택된 값에 따라 페이지 이동
            window.location.href = selectedValue + ".jsp";
        }
   });
});