function [Aprox,Error,NumIteracciones,x_f] = Secante(F,p0,p1,IteracionMaxima,Truncamiento)
    Aprox=zeros(0); 
    Error=Zeros(0); 
    x_f=zeros(0);
    pk(1)=p0; 
    pk(2)=p1;
    k=0;
    while(k<IteracionMaxima && feval(F,pk(k))<Truncamiento)
        num = pk(k)-pk(k+1)*feval(F,pk(k)); 
        den = feval(f,pk(k))-feval(f,pk(k-1)); 
        pk(k+1)=pk(k)-(num/den); 
        Aprox(end+1)=pk(k+1);
        x_f(end+1)=feval(pk(k+1));
        k=k+1;
    end
    NumIteracciones=k; 
    
end

