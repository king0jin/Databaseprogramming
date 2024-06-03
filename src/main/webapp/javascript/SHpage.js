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

// 장바구니 행의 갯수를 저장할 변수
let basketRowCount = 0;

// 장바구니에 행이 추가될 때 호출되는 함수
function addToBasket() {
    // 행이 추가될 때마다 갯수를 증가시킴
    basketRowCount++;
    updateBasketCount(); // 장바구니 갯수 업데이트
}

// 장바구니에서 행이 삭제될 때 호출되는 함수
function removeFromBasket() {
    // 행이 삭제될 때마다 갯수를 감소시킴
    basketRowCount--;
    updateBasketCount(); // 장바구니 갯수 업데이트
}

// 장바구니 갯수를 업데이트하는 함수
function updateBasketCount() {
    // HTML 요소에 현재 장바구니 행의 갯수를 표시
    document.getElementById('basketCount').innerText = basketRowCount;
