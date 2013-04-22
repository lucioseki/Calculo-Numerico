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

[x, k] = newton(f, 1.5, 1e-6, 10);
% compara o x obtido com tolerancia  relativa de 1e-6
assertElementsAlmostEqual(x, 2, 'relative', 1e-6);
assertEqual(k, 3);

[x, k] = newton(f, 1.5, 1e-7, 3);
assertEqual(k, 4); % nao convergiu

function test_tolerancia_grande
f = @(x) (x^2 + x - 6);

[x, k] = newton(f, 1.5, 10, 10);
assertEqual(x, 2.0625);