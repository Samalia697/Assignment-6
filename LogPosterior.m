function [p] = LogPosterior(x,y,ind_2,ind_34,kid)

if(kid~=0)
    mu    = x(1);
    tau   = x(2);
    sigma = x(3);
    theta = x(4:end-1);
    phi=x(end);
    % Log-Prior
    log_prior = 0;
    % p(theta|mu,tau)
    for ii = 1:length(theta)
       log_prior = log_prior - (0.5*((theta(ii)-(mu+(phi*ind_2(ii))))/tau)^2) - log(tau);%Gelman's version
    end
    % p(sigma)
    log_prior = log_prior + log(double(sigma>0));
    % p(tau)
    log_prior = log_prior + log(double(tau>0));
    % p(mu)
    log_prior = log_prior + log(1);
    % p(phi)
    log_prior = log_prior + log(1);%tune
    % Log-Likelihood function
    log_likefun = 0;
    mlogy=mean(y);
    slogy=std(y);
    for ii = 1:length(theta)
           ind_34_ii=find(ind_34==ii);
           zlogy=(y(ind_34_ii)-mlogy) ./ slogy;
           log_likefun =  log_likefun -(0.5*sum(((zlogy-theta(ii))./sigma).^2))- log(sigma);
    end
    % Log Posterior
    p = log_prior + log_likefun;

else
    mu    = x(1);
    tau   = x(2);
    sigma = x(3);
    theta = x(4:end-1);
    % Log-Prior
    log_prior = 0;
    % p(theta|mu,tau)
    for ii = 1:length(theta)
       log_prior = log_prior - (0.5*((theta(ii)-mu)/tau)^2) - log(tau);%Gelman's version
    end
    % p(sigma)
    log_prior = log_prior + log(double(sigma>0));
    % p(tau)
    log_prior = log_prior + log(double(tau>0));
    % p(mu)
    log_prior = log_prior + log(1);
    % Log-Likelihood function
    log_likefun = 0;
    mlogy=mean(y);
    slogy=std(y);
    for ii = 1:length(theta)
           ind_34_ii=find(ind_34==ii);
           zlogy=(y(ind_34_ii)-mlogy) ./ slogy;
           log_likefun =  log_likefun -(0.5*sum(((zlogy-theta(ii))./sigma).^2))- log(sigma);
    end
    % Log Posterior
    p = log_prior + log_likefun;

end