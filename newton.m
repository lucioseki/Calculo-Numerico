function [ x, k ] = newton( f, v_inic, tol, max_k )
%NEWTON Implementação do Método de Newton para aproximação dos zeros de uma
%função diferenciável.
%   
%   [ vx, k] = NEWTON( f, v_inic, tol, max_k )
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
%   max_k: quantidade máxima de iterações.
%
%   Valores de retorno:
%   ----------------------
%   x: aproximação obtida ao final de k iterações.
%      Seu valor inicial é v_inic(1).
%
%   k: quantidade de iterações realizadas
%      k = max_k + 1, quando o número máximo de iterações é atingida sem
%      respeitar a tolerância tol.
%
%   Erro:
%   ----------------------
%
%   Quando f(x) não for definida em alguma iteração, aborta.

    % x inicial = ponto inicial
    xi = v_inic(1);
    
    % derivada de f(x)
    x = sym('x', 'real');
    flinha = diff(f(x));
    
    % iterações
    for k = 1:max_k
        xii = xi - ( f(xi) / subs(flinha, x, xi) );
        
        % encontrou a raíz
        if abs(f(xii)) < tol
            x = xii;
            return
        end
        
        % erro relativo
        error = abs(xii - xi)/abs(xii);
        xi = xii;
        
        % convergiu
        if error < tol
            x = xii;
            return;
        end
    end
    
    % não encontrou a raíz em max_iter iterações
    k = k + 1;
end

