function main()

x = [0.6960; 0.5424; 0.3594]; %��������� �����������
k = 0;
f = VectorFunctionF(x);
while dot( f, f ) > 10^(-6)
    W = FW(x);
    x = x - inv(W)*f;
    f = VectorFunctionF(x);
    k = k + 1;
end
disp('������� � ��������� eps = 10^(-6)')
x
disp(strcat(num2str(k),' ��������(�)'));

end

