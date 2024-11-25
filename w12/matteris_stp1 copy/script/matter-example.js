// // module aliases
// var Engine = Matter.Engine,
//   Render = Matter.Render,
//   Runner = Matter.Runner,
//   Bodies = Matter.Bodies,
//   Composite = Matter.Composite;

// 짧게 쓰기 위한 변수처리
//odject Destructuring
const { Engine, Render, Runner, Bodies, Composite } = Matter;

// create an engine
// var engine = Engine.create();

//물.시를 위한 엔진을 생성*
const anyEngine = Engine.create();

// create a renderer
// var render = Render.create({
//   element: document.body,
//   engine: engine,
// });

//화면에 그리기 위한 렌더러 생성(p5->필수x)
const anyRender = Render.create({
  element: document.body,
  engine: anyEngine,
  options: { width: 600, height: 800 },
});

// create two boxes and a ground
// var boxA = Bodies.rectangle(400, 200, 80, 80);
// var boxB = Bodies.rectangle(450, 50, 80, 80);
// var ground = Bodies.rectangle(400, 610, 810, 60, { isStatic: true });

//월드에 집어넣을 바디를 생성. 두개는 박스, 하나는 같은 박스지만 스태틱처리 되어 바닥으로 역할함.
let boxA = Bodies.rectangle(400, 200, 80, 80);
let boxB = Bodies.rectangle(450, 50, 80, 80);
let circle = Bodies.circle(200, 100, 80, 80);
let ground = Bodies.rectangle(400, 610, 810, 60, { isStatic: true });

// add all of the bodies to the world
//Composite.add(engine.world, [boxA, boxB, ground]);

//월드에 만든 녀석들을 집어넣기 위해서 컴퍼지트를 사용함.
Composite.add(anyEngine.world, [boxA, boxB, ground]);
Composite.add(anyEngine.world, circle);

// run the renderer

//랜더 모듈에서 만든 렌더객체 넣어서 굴리라고 말하기
Render.run(anyRender);

// create runner

//계속 실행을 보장하는 러너 생성
//var runner = Runner.create();
const anyRunner = Runner.create();

// run the engine
//러너 모듈에게 생성된 러너와 생성된 엔진을 집어넣고 시동 걸기(무한 실행 보장)
//Runner.run(runner, engine);
Runner.run(anyRunner, anyEngine);
