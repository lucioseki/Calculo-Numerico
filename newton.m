function [ vx, iter ] = newton( f, v_inic, tol, max_iter )
%NEWTON Implementação do Método de Newton para aproximação dos zeros de uma
%função diferenciável.
%   
%   [ vx, iter] = NEWTON( f, v_inic, tol, max_iter )
%
%   Parâmetros de entrada:
%   ----------------------
%   f: função cuja raíz será obtida.
%      Deve possuir zero ou uma raíz.
%   
%   v_inic: vetor de pontos iniciais.
%           No método de Newton, será considerado somente o primeiro elemento.
%   
%   tol: tolerância de erro.
%
%   max_iter: quantidade máxima de iterações.
%
%   Valores de retorno:
%   ----------------------
%   vx: vetor de aproximações da raíz obtidas nas iter iterações.
%       Seu valor inicial é v_inic(1).
%       Ao final da execução, terá iter + 1 valores.
%
%   iter: quantidade de iterações realizadas
%       iter = max_iter + 1, quando o número máximo de iterações é atingida sem
%       respeitar a tolerância tol.
%
%   Erro:
%   ----------------------
%
%   Quando f(x) não for definida em alguma iteração, imprime o vx obtido
%   até esta iteração e aborta.

    % verifica quantidade de argumentos
    ST = dbstack; % estrutura contendo a pilha de execução atual
    if nargin ~= nargin(ST.name)
        error('secante:argChk', 'Quantidade inválida de argumentos.\nDigite "help %s" para obter ajuda.', ST.name)
    end
    
end

