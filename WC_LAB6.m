clc; clear all; close all;

%% Initialisation
X = ones(1, 5);
X(5) = xor(X(3), X(4));
out = zeros(1, 16);

%% Generation of PN sequence
for i = 1:15
    out(i) = X(4);
    X = circshift(X, 1);
    X(5) = xor(X(3), X(4));
end

%% Balance condition
countp = sum(out);
countn = 15 - countp;

for i = 1:15
    if out(i) == 0
        out(i) = -1;
    end
end
out = out(1:15);

if abs(countp - countn) <= 1
    disp("Sequence is Balanced");
else
    disp("Sequence is not Balanced");
end

%% Auto-correlation
i = 1;
corr = zeros(1, 9);
for d = -4:4
    Y = circshift(out, d);
    corr(i) = sum(out.*Y)/15;
    i = i + 1;
end

plot(-4:4, corr, -4:4, zeros(1,9));