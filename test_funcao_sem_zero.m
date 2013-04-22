% testa se iter == max_iter + 1, quando a funcao nao tem raiz
%
% function test_f_sempre_positivo
% testa se iter == max_iter + 1, quando f(x) > 0 para todo x
%
% function test_f_sempre_negativo
% testa se iter == max_iter + 1, quando f(x) < 0 para todo x
%

function test_suite = test_funcao_sem_zero
initTestSuite;

function test_f_sempre_positivo
f = @(x) (x^2 + 1);
v_inic = [0, 1];
tol = 0.5;
max_k = 10;
[~, k] = newton(f, v_inic, tol, max_k);
assertEqual(max_k + 1, k)
[~, k] = secante(f, v_inic, tol, max_k);
assertEqual(max_k + 1, k)

function test_f_sempre_negativo
f = @(x) -(x^2 + 1);
v_inic = [0, 1];
tol = 0.5;
max_k = 10;
[~, k] = newton(f, v_inic, tol, max_k);
assertEqual(max_k + 1, k)
[~, k] = secante(f, v_inic, tol, max_k);
assertEqual(max_k + 1, k)