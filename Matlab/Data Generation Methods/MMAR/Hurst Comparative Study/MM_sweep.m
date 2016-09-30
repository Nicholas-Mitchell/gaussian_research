
b = 4;
k = 8;
H = 0.05;
log_mu = -0.15:0.05:0.15;
log_sig = 0.1;

MM_sweep_returns = zeros(b^k, size(log_mu, 2));
MM_sweep_fit = struct([]);

for p = 1:7
        MM_sweep_returns(:,p) = mmar(b, k, H, log_mu(p), log_sig);
        % MM_sweep_fit.(p) = allfitdist(MM_sweep_returns(:,p));
        
end

