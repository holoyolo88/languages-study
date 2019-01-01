# 컨트롤러 기본 구조
----------------
## 1. 컨트롤러 설계
컨트롤러는 MVC 패턴에서 JSP와 빈즈 클래스의 중간에 위치하며 이들 사이에서 데이터 전달이나 비즈니스 로직 호출 등을 담당함.
컨트롤러는 직접 설계해서 구현할 수도 있고 스프링 프레임워크나 스트러츠 프레임워크를 사용해도 됨.
프레임워크를 사용하면 모든 사용자 요청을 가로채고 프레임워크 기반의 서비스를 제공함. 그리고 각각의 사용자 요청에 따라 개별적으로 자바 클래스로 컨트롤러를 구현하거나 하나의 컨트롤러에서 여러 요청을 메서드 단위로 구현해 처리함.
MVC 모델에서 모든 요청은 예외적인 상황을 제외하고는 컨트롤러를 먼저 통하도록 되어 있으므로 대부분의 비즈니스 로직의 처리가 컨트롤러에서 발생하며, 이에 따른 오류 처리 역시 컨트롤러가 담당하게 됨.