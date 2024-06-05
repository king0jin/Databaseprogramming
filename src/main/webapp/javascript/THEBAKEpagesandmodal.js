document.addEventListener("DOMContentLoaded", function() {
    // cubbab1 버튼 클릭 시 모달 띄우기
    document.querySelector(".menu-item-card1").addEventListener("click", function() {
        openModal("sand1");
    });

    
    // 모달을 여는 함수
    function openModal(modalId) {
        var modal = document.getElementById(modalId);
        modal.style.display = "block";
    }

    // 모달을 닫는 함수
    window.closeModal = function(modalId) {
        var modal = document.getElementById(modalId);
        modal.style.display = "none";
    };

    // 모달 외부를 클릭했을 때 모달을 닫기
    window.onclick = function(event) {
        if (event.target.classList.contains("modal")) {
            event.target.style.display = "none";
        }
    };
    
    // 장바구니 버튼 클릭 시 이벤트 처리
    document.getElementById('addToCartsand1').addEventListener('click', function() {
        var quantity = document.getElementById('sand1Quantity').value;
        alert('B.L.T샌드위치 ' + quantity + '개가 장바구니에 추가되었습니다.');
        closeModal('sand1');
    });

});