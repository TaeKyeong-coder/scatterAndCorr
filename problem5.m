clc
clear
close all

x1 = csvread('housing.csv');

x1 = x1(2:end, 1:end);

#���� => 2��
floor = x1(:,2);

#����=>5��
prices = x1(:,5);

#plot(floor(:), prices , '.b', F1*theta1 , '-r')
plot(floor, prices, 'or', 'MarkerSize',5)
figure(1)
grid on

xlabel("����")
ylabel("����")

cov_ap = (floor-mean(floor))'*(prices-mean(prices))/length(floor)
var_a = (floor-mean(floor))'*(floor-mean(floor))/length(floor)
var_p = (prices-mean(prices))'*(prices-mean(prices))/length(prices)

corr_c = cov_ap/sqrt(var_a*var_p)