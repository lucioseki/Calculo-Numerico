% testa o comportamento da função com diferentes valores de tolerância.
%
% function test_tolerancia_grande
% teste com valor de tolerancia grande
%
% function test_tolerancia_pequena
% teste com valor de tolerancia pequena
%

function test_suite = test_tolerancia
initTestSuite;

function test_tolerancia_pequena
f = @(x) (x^2 + x - 6);

% tolerancia relativa de 10e-6 em 3 iterações
[x, k] = newton(f, 1.5, 10e-6, 3);
% compara o x obtido com tolerancia  relativa de 10e-6
assertElementsAlmostEqual(x, 2, 'relative', 10e-6);
assertEqual(k, 3);

% tolerancia relativa de 10e-8 em 3 iterações
[x, k] = newton(f, 1.5, 10e-8, 3);
% nao convergiu
assertEqual(k, 4);

function test_tolerancia_grande
f = @(x) (x^2 + x - 6);

[x, k] = newton(f, 1.5, 10, 10);
assertEqual(k, 0);