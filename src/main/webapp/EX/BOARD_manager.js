document.getElementById('mainSelect').addEventListener('change', function() {
    const subMenuSelect = document.getElementById('subMenuSelect');
    if (this.value === 'MENU') {
        subMenuSelect.style.display = 'inline-block'; // 또는 'block'
    } else {
        subMenuSelect.style.display = 'none';
    }
});

function handleSelectChange() {
    var selectElement = document.getElementById("mainSelect");
    var selectedValue = selectElement.value;

    if (selectedValue === "list") {
        window.location.href = "BOARD_manager.jsp"; // 게시글 페이지로 이동
    } else if (selectedValue === "trash") {
        window.location.href = "trash.jsp"; // 휴지통 페이지로 이동
    }
}

// 페이지 로드 후 이벤트 리스너 추가
window.onload = function() {
    document.getElementById("mainSelect").addEventListener("change", handleSelectChange);
};