% Função principal

str_f = input('digite a função:\n(ex: x^2 + x - 6)\n>> ', 's');
str_x0 = input('digite o primeiro ponto inicial:\n(ex: 1.5)\n>> ', 's');
str_x1 = input('digite o segundo ponto inicial:\n(ex: 2.5)\n>> ', 's');
str_tol = input('digite o valor de tolerância:\n(ex: 10e-8)\n>> ', 's');
str_max_k = input('digite o número máximo de iterações:\n(ex: 10)\n>> ', 's');

f = str2func(strcat('@(x) ', str_f));
v_inic = [str2double(str_x0), str2double(str_x1)];
tol = str2double(str_tol);
max_k = str2num(str_max_k);

[newton_x, newton_k] = newton(f, v_inic, tol, max_k);
[secante_x, secante_k] = secante(f, v_inic, tol, max_k);

fprintf('\nMétodo de Newton:\n');
if newton_k > max_k
    fprintf('Não convergiu.\n');
end
fprintf('x obtido: %f\nnúmero de iterações: %d\n', newton_x, newton_k);

fprintf('\nMétodo da Secante:\n');
if secante_k > max_k
    fprintf('Não convergiu\n');
end
fprintf('x obtido: %f\nnúmero de iterações: %d\n', secante_x, secante_k);