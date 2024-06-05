const buttonData = [
    { id: 1, label: "버튼 1" }
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