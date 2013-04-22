function [ x, k ] = secante( f, v_inic, tol, max_k )
%SECANTE Implementação do Método da Secante para aproximação dos zeros de uma
%função diferenciável.
%
%   [ x, k] = SECANTE( f, v_inic, tol, mqx_k )
%
%   Parâmetros de entrada:
%   ----------------------
%   f: função cuja raíz será obtida.
%      Deve possuir zero ou uma raíz.
%   
%   v_inic: vetor de pontos iniciais.
%           No método da Secante, os dois primeiros elementos serão
%           considerados.
%   
%   tol: tolerância de erro.
%
%   max_k: quantidade máxima de iterações.
%
%   Valores de retorno:
%   ----------------------
%   x: aproximação obtida ao final de k iterações.
%       Seu valor inicial é v_inic(1).
%
%   k: quantidade de iterações realizadas
%       k = max_k + 1, quando o número máximo de iterações é atingida sem
%       respeitar a tolerância tol.
%
%   Erro:
%   ----------------------
%
%   Quando f(x) não for definida em alguma iteração, aborta.

    % x inicial = ponto inicial
    xi = v_inic(1);
    xii = v_inic(2);
    
    % vetor de saída = vetor de pontos iniciais
    x = v_inic;
    
    % iterações
    for k = 0:max_k
    end
    
    % não encontrou a raíz em max_iter iterações
    k = k + 1;
end

