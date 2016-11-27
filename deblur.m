% source - http://www.siam.org/books/fa03/FA03Chapter1.pdf
% tools - http://www.imm.dtu.dk/~pcha/HNO/

% For a matrix A given, use the codes first to find its SVD:
[U,S,V]=svd(A)
% And then 3 matrix are given which is the result of svd of matrix A, and they have the form: A=U*S*V’
% Then transpose the matrix U:
U2=transpose(S)
% And find the invers matrix of S
S2=inv(S)
% Then it could be calculated rank k deburring matrix:
A3=V(:,1:k)*S2(1:k,1:k)*U2(1:k,:)
% Or 
%A3=V(:,1:k)*inv(s(1:k,1:k))*U(:,1:k)’


% For the challenge 4,
% Create:
[K,H,L]=svd(Ac);
[U,S,V]=svd(Ar);
Arp=V(:,1:k)*inv(s(1:k,1:k))*U(:,1:k)’;
Acp=L(:,1:k)*inv(H(1:k,1:k))*K(:,1:k)’;
X=Acp*B*(Arp)’

% We could select a k to have the text be able to read
