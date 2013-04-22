function [ x, k ] = newton( f, v_inic, tol, max_k )
%NEWTON Implementação do Método de Newton para aproximação dos zeros de uma
%função diferenciável.
%   
%   [ x, k] = NEWTON( f, v_inic, tol, max_k )
%
%   Parâmetros de entrada:
%   ----------------------
%   f: função cuja raíz será obtida.
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
    x0 = v_inic(1);

    % ponto inicial é a raíz
    if abs(f(x0)) < tol
        k = 0;
        x = x0;
        return
    end
    
    % derivada de f(x)
    x = sym('x', 'real');
    flinha = diff(f(x));
    
    % iterações
    for k = 1:max_k
        x1 = x0 - ( f(x0) / subs(flinha, x, x0) );
        
        % encontrou a raíz
        if abs(f(x1)) < tol
            x = x1;
            return
        end
        
        % erro relativo
        error = abs(x1 - x0)/abs(x1);
        
        % convergiu
        if error < tol
            x = x1;
            return;
        end
        
        x0 = x1;
    end
    
    % não encontrou a raíz em max_iter iterações
    x = x1;
    k = k + 1;
end

