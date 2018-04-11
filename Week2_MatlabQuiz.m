A = [1 2; 3 4; 5 6]
B = [1 2 3; 4 5 6]

A_transpose = A'
B_transpose = B'

C1 = A' + B %this works
C2 = B * A %this should work
%and it does

%C3 = A + B %this should not work
%and it doesnt! nice

%C4 = B'* A % this should not work
%and it doesnt

A2 = [16 2 3 13;
      5 11 10 8;
      9 7 6 12;
      4 14 15 1]
B2 = A2(:, 1:2) %this should give us what we want
B2 = A2(1:4, 1:2) %this should give us what we want
%B2 = A2(:0:2) % this should not work, matlab is index 1
%B2 = A2(0:4, 0:2) % this should not work, matlab is index 1

%vectorization example 
v = zeros(10, 1)
x = rand(10,1)
A = magic(10)
for i = 1:10
    for j = 1:10
        v(i) = v(i) + A(i, j) * x(j);
    end
end 
%breaking down the loop
v(1), A(1, 1), x(1)

%vectorization
%v = Ax % i dont think this will work
%and it didnt

v1 = A * x %this should work
%and it did

v3 = x' * A % this should work
%and it did NICE!

v4 = sum(A*x) %this will work in matlab but doesnt return same result
%as for loop

%4.)

v = rand(7,1)
w = ones(7,1)

z = 0;
for i = 1:7
    z = z + v(i) * w(i)
end 
%breaking down loop
v(1), w(1)

z = sum(v.* w) %i think its this one
% and it is !
% are we summing the dot product here?
%yup
v = [1 2 3 4 5 6 7]
w = [7 6 5 4 3 2 1]
test_dot = (v.* w)

%5.)

X = magic(7)

for i = 1:7
  for j = 1:7 %iterate through js (col) while keeping i (row)
      %constant
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end

A = log(X)
B = X ^ 2
C = X + 1
D = X/4
