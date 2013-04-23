% Lucio Mitsuru Seki            379883  lucioseki@gmail.com
% Viviane Bonadia dos Santos    379972  vivianebonadia@gmail.com
% 
% conjunto de testes do método da Secante com exemplos do livro da Ruggiero
%
% function test_exemplo_12
% exemplo 12
%
% function test_exemplo_13
% exemplo 13
%
% function test_exemplo_14
% exemplo 14
%
% function test_exemplo_15
% exemplo 15
%

function test_suite = test_ruggiero_secante
initTestSuite;

function test_exemplo_12
% Exemplo 12 de Ruggiero
f = @(x) (x^2 + x - 6);
[x, k] = secante(f, [1.5, 2.5], 10e-4, 5);
assertElementsAlmostEqual(x, 2, 'relative', 10e-4);
assertEqual(k, 3);

function test_exemplo_13
% Exemplo 13 de Ruggiero
f = @(x) (x^3 - 9*x + 3);
[x, k] = secante(f, [1.5, 2.0], 10e-8, 10);
assertElementsAlmostEqual(x, 2.8169, 'relative', 10e-4);
% nao convergiu
assertEqual(k, 11);

function test_exemplo_14
% Exemplo 14 de Ruggiero
f = @(x) (x^3 - 9*x + 3);
x0 = [0.5, 2.0];
tol = 10e-4;
[x, k] = secante(f, x0, tol, 10);
assertElementsAlmostEqual(x, 0.337606838, 'relative', 10e-4);
assertEqual(k, 4);

function test_exemplo_15
% Exemplo 15 de Ruggiero
f = @(x) (x^2 - 7);
x0 = [2, 3];
[x, k] = secante(f, x0, 10e-7, 10);
assertElementsAlmostEqual(x, 2.645751311, 'relative', 10e-9);
assertEqual(k, 4);