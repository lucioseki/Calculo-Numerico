% Função principal

% Parâmetros de entrada
str_f = input('digite a função (ex: x^2 + x - 6):\n>> ', 's');
str_x0 = input('digite o primeiro ponto inicial (ex: 1.5):\n>> ', 's');
str_x1 = input('digite o segundo ponto inicial (ex: 2.5):\n>> ', 's');
str_tol = input('digite o valor de tolerância (ex: 10e-8):\n>> ', 's');
str_max_k = input('digite o número máximo de iterações (ex: 10):\n>> ', 's');

% Conversão para números
f = str2func(strcat('@(x) ', str_f));
v_inic = [str2double(str_x0), str2double(str_x1)];
tol = str2double(str_tol);
max_k = str2num(str_max_k);

% Relatório do Método de Newton
fprintf('\nMétodo de Newton para a função f(x) = %s\n', str_f);
tic
[x, k] = newton(f, v_inic, tol, max_k);
tempo = toc;
if k > max_k
    fprintf('Não convergiu em %d iterações.\n', max_k);
end
fprintf('ponto inicial: %d\n', v_inic(1));
fprintf('tolerância: %d\n', tol);
fprintf('x obtido: %d\n', x)
fprintf('número de iterações: %d\n', k);
fprintf('tempo de execução: %f\n\n', tempo);

% Relatório do Método da Secante
fprintf('\nMétodo da Secante para a função f(x) = %s\n', str_f);
tic
[x, k] = secante(f, v_inic, tol, max_k);
tempo = toc;
if k > max_k
       fprintf('Não convergiu em %d iterações.\n', max_k);
end
fprintf('pontos iniciais: [%d, %d]\n', v_inic(1), v_inic(2));
fprintf('tolerância: %d\n', tol);
fprintf('x obtido: %d\n', x)
fprintf('número de iterações: %d\n', k);
fprintf('tempo de execução: %f\n\n', tempo);
