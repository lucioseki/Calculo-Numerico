% conjunto de testes com exemplos do livro da Ruggiero
%
% function test_exemplo_12
% exemplo 12
%
% function test_exemplo_13
% exemplo 13
%

function test_suite = test_ruggiero
initTestSuite;

function test_exemplo_12
% Exemplo 12 de Ruggiero
f = @(x) (x^2 + x - 6);
[x, k] = newton(f, 1.5, 10e-6, 3);
assertElementsAlmostEqual(x, 2, 'relative', 10e-6);
assertEqual(k, 3);

function test_exemplo_13
% Exemplo 13 de Ruggiero
f = @(x) (x^3 - 9*x + 3);
[x, k] = newton(f, 1.5, 10e-8, 10);
assertElementsAlmostEqual(x, 2.8169, 'relative', 10e-4);
% nao convergiu
assertEqual(k, 11);

function test_exemplo_14
% Exemplo 14 de Ruggiero
f = @(x) = (x^3 - 9*x + 3);
x0 = 0.5;
tol = 10e-3;
[x, k] = newton(f, x0, tol, 2);
assertElementsAlmostEqual(x, 0.337606838, 'relative', 10e-8);
assertEqual(k, 3);

function test_exemplo_15
% Exemplo 15 de Ruggiero
f = @(x) = (x^2 - 7);
x0 = 2;
[x, k] = newton(f, x0, 10e-7, 10);
assertElementsAlmostEqual(x, 2.645751311, 'relative', 10e-9);
assertEqual(k, 5);