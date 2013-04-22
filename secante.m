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

    % x iniciais = pontos iniciais
    x0 = v_inic(1);
    x1 = v_inic(2);
    k = 0;
    
    % se x0 ou x1 for raíz
    if abs(f(x0)) < tol
        x = x0;    
        return
    end
    if abs(f(x1)) < tol
        x = x1;
        return
    end
    
    % se x0 e x1 forem muito próximos
    if abs(x1 - x0) < tol
        x = x1
        return
    end
    
    % iterações
    for k = 1:max_k
        x2 = x1 - (f(x1) / (f(x1) - f(x0)) ) * (x1 - x0);
        
        % encontrou a raiz
        if abs(f(x2)) < tol
            x = x2;
            return
        end
        
        % erro relativo
        error = abs(x2 - x1)/abs(x2);
        
        % convergiu
        if error < tol
            x = x2;
            return
        end
        
        x0 = x1;
        x1 = x2;
    end
    
    % não encontrou a raíz em max_iter iterações
    x = x2;
    k = k + 1;
end

