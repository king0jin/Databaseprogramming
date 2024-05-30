const buttonData = [
    { id: 1, label: "버튼 1" },
    { id: 2, label: "버튼 2" }
];

// 버튼에 데이터를 표시하는 함수
function displayButtonData() {
    buttonData.forEach(item => {
        const button = document.getElementById(`button${item.id}`);
        if (button) {
            button.textContent = item.label;
        }
    });
}

// 페이지가 로드될 때 버튼에 데이터를 표시
window.onload = function() {
    displayButtonData();
};