# Dart-Flutter-study-blog

Dart와 Flutter를 공부한 내용을 기록하는 저장소입니다.  
참고: [노마드코더 강의 👍](https://nomadcoders.co/flutter-for-beginners)

## 🎯 Dart

### Dart의 컴파일러

1. dart web
   - dart2는 코드를 javascript로 변환해주는 컴파일러

2. dart native(machine code JIT and AOT)
   - dart2는 쓴 코드를 여러 CPU의 아키텍처에 맞게 변환해주는 컴파일러
   - 따라서 iOS, Android, Windows, Linux, Mac 등으로 컴파일 O

   - JIT (just-in-time)
     - 개발할 때.
     - dart VM을 사용.
     - 코드의 결과를 바로 화면에 보여줌.(개발 경험이 좋다!!)

   - AOT (ahead-of-time)
     - 배포할 때.
     - 컴파일을 먼저 하고, 그 결과인 바이너리(CPU가 이해할 수 있는 기계어)를 배포한다.

### Variables

- final: 값을 재할당하지 못하는 변수
- dynamic: 어떤 타입의 데이터가 들어올 지 모르는 변수
- const: 컴파일 때 값이 결정되는 변수
- var: 컴파일 당시 할당된 타입의 변수
- late: final, var, String 같은 것을 앞에 써줄 수 있는 수식어로서 어떤 데이터가 올 지 모르는 변수

### Data Types

dart는 객체 지향 언어이다.

- Lists
- String Interpolation
- Collection For
- Maps
- Sets

### Functions

- Named parameters
  - function을 호출할 때 position parameter를 쓰는 것보다 named argument 쓰는 것이 좋음.
  - named argument를 사용하면, 바로 확인할 수 있어서 중고 순서가 상관이 없음.
  - function의 변수를 'required'로 바꿔 주거나 파라미터를 기본 값으로 써 null 들어오는 것 방지.

- Optional positional parameters
- QQ operator
- Typedef

### Classes

- Constructors
- Named constructor Parameters
- Named Constructors
- Cascade Notation
- Enums
- Abstract Classes
- Inheritance
- Mixins
- Conclusions
