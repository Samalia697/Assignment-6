clc
% close all

y = log([607, 583, 521, 494, 369, 782, 570, 678, 467, 620, 425, 395, 346, 361, 310, 300, 382, 294, 315, 323, 421, 339, 398, 328, 335, 291, 329, 310, 294, 321, 286, 349, 279, 268, 293, 310, 259, 241, 243, 272, 247, 275, 220, 245, 268, 357, 273, 301, 322, 276, 401, 368, 149, 507, 411, 362, 358, 355, 362, 324, 332, 268, 259, 274, 248, 254, 242, 286, 276, 237, 259, 251, 239, 247, 260, 237, 206, 242, 361, 267, 245, 331, 357, 284, 263, 244, 317, 225, 254, 253, 251, 314, 239, 248, 250, 200, 256, 233, 427, 391, 331, 395, 337, 392, 352, 381, 330, 368, 381, 316, 335, 316, 302, 375, 361, 330, 351, 186, 221, 278, 244, 218, 126, 269, 238, 194, 384, 154, 555, 387, 317, 365, 357, 390, 320, 316, 297, 354, 266, 279, 327, 285, 258, 267, 226, 237, 264, 510, 490, 458, 425, 522, 927, 555, 550, 516, 548, 560, 545, 633, 496, 498, 223, 222, 309, 244, 207, 258, 255, 281, 258, 226, 257, 263, 266, 238, 249, 340, 247, 216, 241, 239, 226, 273, 235, 251, 290, 473, 416, 451, 475, 406, 349, 401, 334, 446, 401, 252, 266, 210, 228, 250, 265, 236, 289, 244, 327, 274, 223, 327, 307, 338, 345, 381, 369, 445, 296, 303, 326, 321, 309, 307, 319, 288, 299, 284, 278, 310, 282, 275, 372, 295, 306, 303, 285, 316, 294, 284, 324, 264, 278, 369, 254, 306, 237, 439, 287, 285, 261, 299, 311, 265, 292, 282, 271, 268, 270, 259, 269, 249, 261, 425, 291, 291, 441, 222, 347, 244, 232, 272, 264, 190, 219, 317, 232, 256, 185, 210, 213, 202, 226, 250, 238, 252, 233, 221, 220, 287, 267, 264, 273, 304, 294, 236, 200, 219, 276, 287, 365, 438, 420, 396, 359, 405, 397, 383, 360, 387, 429, 358, 459, 371, 368, 452, 358, 371]);
ind_34 = [1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34];
ind_2= [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0];

ind_mean=zeros(1,length(unique(ind_34)));
for i = 1:length(unique(ind_34))
    ind_mean(i) = mean(y(ind_34==i));
end
N=10000;%no of samples

phi=1;
kid=1; % In assignment 6 kids are considered so kid=1 and phi must be considered as well
x0 = [mean(y),std(y),std(y),ind_mean,phi];%initial sample:[mu,tau,sigma,theta,phi]
smpl = slicesample(length(x0),N,x0,y,ind_2,ind_34,kid);

% Question 1

figure;
Phi=smpl(38,:).*std(y);
Phi_hist = histogram(Phi,200,'normalization','pdf');

Phi_mean=mean(Phi)
title(["Original Phi - Mean: ",num2str(Phi_mean)]);

Phi_hist_mode=find(Phi_hist.Values == max(Phi_hist.Values));
Phi_mode=Phi_hist.BinEdges(Phi_hist_mode(1))+Phi_hist.BinWidth/2
hold on
plot([Phi_mode,Phi_mode],[0,7],'r','LineWidth',1);

ed=linspace(min(Phi),max(Phi),201);
Phi1=histcounts(Phi,ed);
Phi1=Phi1/sum(Phi1);
Phi2=cumsum(Phi1);
[c1,index1] = min(abs(Phi2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(Phi2-0.975));
clu=ed(index2);
Phi_ci=[cll clu]
hold on
plot([cll,cll],[0,7],'b','LineStyle','--','LineWidth',3);
hold on
plot([clu,clu],[0,7],'b','LineStyle','--','LineWidth',3);

% Question 2

figure;

subplot(1,2,1);

Tau=smpl(2,:).*std(y);
Tau_hist = histogram(Tau,200,'normalization','pdf');
Tau_mean=mean(Tau)
title(["Original Tau (A6) - Mean: ",num2str(Tau_mean)]);

Tau_hist_mode=find(Tau_hist.Values == max(Tau_hist.Values));
Tau_mode=Tau_hist.BinEdges(Tau_hist_mode(1))+Tau_hist.BinWidth/2
hold on
plot([Tau_mode,Tau_mode],[0,7],'r','LineWidth',1);

ed=linspace(min(Tau),max(Tau),201);
Tau1=histcounts(Tau,ed);
Tau1=Tau1/sum(Tau1);
Tau2=cumsum(Tau1);
[c1,index1] = min(abs(Tau2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(Tau2-0.975));
clu=ed(index2);
Tau_ci=[cll clu]
hold on
plot([cll,cll],[0,7],'b','LineStyle','--','LineWidth',3);
hold on
plot([clu,clu],[0,7],'b','LineStyle','--','LineWidth',3);

kid=0;
x0 = [mean(y),std(y),std(y),ind_mean];%initial sample:[mu,tau,sigma,theta]
smpl_NoKid = slicesample(length(x0),N,x0,y,ind_2,ind_34,kid);

subplot(1,2,2);

Tau_NoKid=smpl_NoKid(2,:).*std(y);
Tau_hist = histogram(Tau_NoKid,200,'normalization','pdf');
Tau_mean=mean(Tau_NoKid)
title(["Original Tau (A5) - Mean: ",num2str(Tau_mean)]);

Tau_hist_mode=find(Tau_hist.Values == max(Tau_hist.Values));
Tau_mode=Tau_hist.BinEdges(Tau_hist_mode(1))+Tau_hist.BinWidth/2
hold on
plot([Tau_mode,Tau_mode],[0,7],'r','LineWidth',1);

ed=linspace(min(Tau_NoKid),max(Tau_NoKid),201);
Tau1=histcounts(Tau_NoKid,ed);
Tau1=Tau1/sum(Tau1);
Tau2=cumsum(Tau1);
[c1,index1] = min(abs(Tau2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(Tau2-0.975));
clu=ed(index2);
Tau_ci=[cll clu]
hold on
plot([cll,cll],[0,7],'b','LineStyle','--','LineWidth',3);
hold on
plot([clu,clu],[0,7],'b','LineStyle','--','LineWidth',3);

% Question 3

Mu=(smpl(1,:).*std(y))+mean(y);

figure;
prior_child=mean(Mu+Phi)+mean(Tau).*randn(1,length(Tau));
prior_child_hist=histogram(prior_child,200,'normalization','pdf','EdgeColor','#A2142F','DisplayStyle','stairs');
prior_child_mean=mean(prior_child)
title("prior distributions")

prior_child_hist_mode=find(prior_child_hist.Values == max(prior_child_hist.Values));
prior_child_mode=prior_child_hist.BinEdges(prior_child_hist_mode(1))+prior_child_hist.BinWidth/2

ed=linspace(min(prior_child),max(prior_child),201);
prior_child1=histcounts(prior_child,ed);
prior_child1=prior_child1/sum(prior_child1);
prior_child2=cumsum(prior_child1);
[c1,index1] = min(abs(prior_child2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(prior_child2-0.975));
clu=ed(index2);
prior_child_ci=[cll clu]

hold on
prior_adult=mean(Mu)+mean(Tau).*randn(1,length(Tau));
prior_adult_hist=histogram(prior_adult,200,'normalization','pdf','EdgeColor','b','DisplayStyle','stairs');
prior_adult_mean=mean(prior_adult)

prior_adult_hist_mode=find(prior_adult_hist.Values == max(prior_adult_hist.Values));
prior_adult_mode=prior_adult_hist.BinEdges(prior_adult_hist_mode(1))+prior_adult_hist.BinWidth/2

ed=linspace(min(prior_adult),max(prior_adult),201);
prior_adult1=histcounts(prior_adult,ed);
prior_adult1=prior_adult1/sum(prior_adult1);
prior_adult2=cumsum(prior_adult1);
[c1,index1] = min(abs(prior_adult2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(prior_adult2-0.975));
clu=ed(index2);
prior_adult_ci=[cll clu]

hold on
Mu_NoKid=(smpl_NoKid(1,:).*std(y))+mean(y);
prior=mean(Mu_NoKid)+mean(Tau_NoKid).*randn(1,length(Tau_NoKid));
prior_hist=histogram(prior,200,'normalization','pdf','EdgeColor','m','DisplayStyle','stairs');
prior_mean=mean(prior)

prior_hist_mode=find(prior_hist.Values == max(prior_hist.Values));
prior_mode=prior_hist.BinEdges(prior_hist_mode(1))+prior_hist.BinWidth/2

ed=linspace(min(prior),max(prior),201);
prior1=histcounts(prior,ed);
prior1=prior1/sum(prior1);
prior2=cumsum(prior1);
[c1,index1] = min(abs(prior2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(prior2-0.975));
clu=ed(index2);
prior_ci=[cll clu]

legend('Kids',' Adults','Mixed');
% Question 4

figure;
Mu=smpl(1,:).*std(y);
Mu_N=smpl(1,:);
Tau_N=smpl(2,:);
Sigma_N=smpl(3,:);
Sigma=smpl(3,:).*std(y);
Phi_N=smpl(end,:);
% LogPost_child=mean(y)+((Mu_N+Phi_N+(Tau_N.*randn(1,length(Tau_N)))+(Sigma_N.*randn(1,length(Sigma_N)))).*std(y));
LogPost_child=mean(y)+(mean(Mu+Phi)+(mean(Tau).*randn(1,length(Tau)))+(mean(Sigma).*randn(1,length(Sigma)))).*std(y);
Post_child=exp(LogPost_child);
Post_child_hist=histogram(Post_child,200,'normalization','pdf','EdgeColor','#A2142F','DisplayStyle','stairs');
Post_child_mean=mean(Post_child)

Post_child_hist_mode=find(Post_child_hist.Values == max(Post_child_hist.Values));
Post_child_mode=Post_child_hist.BinEdges(Post_child_hist_mode(1))+Post_child_hist.BinWidth/2

ed=linspace(min(Post_child),max(Post_child),201);
Post_child1=histcounts(Post_child,ed);
Post_child1=Post_child1/sum(Post_child1);
Post_child2=cumsum(Post_child1);
[c1,index1] = min(abs(Post_child2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(Post_child2-0.975));
clu=ed(index2);
Post_ci=[cll clu]

hold on
% LogPost_adult=mean(y)+((Mu_N+(Tau_N.*randn(1,length(Tau_N)))+(Sigma_N.*randn(1,length(Sigma_N)))).*std(y));
LogPost_adult=mean(y)+(mean(Mu)+(mean(Tau).*randn(1,length(Tau)))+(mean(Sigma).*randn(1,length(Sigma)))).*std(y);
Post_adult=exp(LogPost_adult);
Post_adult_hist=histogram(Post_adult,200,'normalization','pdf','EdgeColor','b','DisplayStyle','stairs');
Post_adult_mean=mean(Post_adult)

Post_adult_hist_mode=find(Post_adult_hist.Values == max(Post_adult_hist.Values));
Post_adult_mode=Post_adult_hist.BinEdges(Post_adult_hist_mode(1))+Post_adult_hist.BinWidth/2

ed=linspace(min(Post_adult),max(Post_adult),201);
Post_adult1=histcounts(Post_adult,ed);
Post_adult1=Post_adult1/sum(Post_adult1);
Post_adult2=cumsum(Post_adult1);
[c1,index1] = min(abs(Post_adult2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(Post_adult2-0.975));
clu=ed(index2);
Post_ci=[cll clu]

hold on
eta=betarnd(sum(ind_2)+1,length(ind_2)+sum(ind_2)+1,[1 N]);
% LogPost_mixed=mean(y)+((Mu_N+(Phi_N.*eta)+(Tau_N.*randn(1,length(Tau_N)))+(Sigma_N.*randn(1,length(Sigma_N)))).*std(y));
LogPost_mixed=mean(y)+(mean(Mu+Phi.*eta)+(mean(Tau).*randn(1,length(Tau)))+(mean(Sigma).*randn(1,length(Sigma)))).*std(y);
Post_mixed=exp(LogPost_mixed);
Post_mixed_hist=histogram(Post_mixed,200,'normalization','pdf','EdgeColor','m','DisplayStyle','stairs');
Post_mixed_mean=mean(Post_mixed)

Post_mixed_hist_mode=find(Post_mixed_hist.Values == max(Post_mixed_hist.Values));
Post_mixed_mode=Post_mixed_hist.BinEdges(Post_mixed_hist_mode(1))+Post_mixed_hist.BinWidth/2

ed=linspace(min(Post_mixed),max(Post_mixed),201);
Post_mixed1=histcounts(Post_mixed,ed);
Post_mixed1=Post_mixed1/sum(Post_mixed1);
Post_mixed2=cumsum(Post_mixed1);
[c1,index1] = min(abs(Post_mixed2-0.025));
cll=ed(index1);
[c2,index2] = min(abs(Post_mixed2-0.975));
clu=ed(index2);
Post_ci=[cll clu]

legend('Kids',' Adults','Mixed');