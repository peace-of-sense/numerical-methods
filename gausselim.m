% create a fucntion to perform Gaussian Elimination
function gausselim(A,b) 
    N = length(b);
    % Aurgumented marix
    Aug = [A b];

    X = zeros(N,1); %place holder for final data

    %% Loop function
    % j = column 
    for j = 1:N-1
        % i = row
        for i = j+1:N
            % multiple LAMBDA 
            m = Aug(i,j)/Aug(j,j);
            %operation function
            Aug(i,:) = Aug(i,:) - m*Aug(j,:);
        end
    end
    % echelon form obtained

    fprintf("Echelon form is")
    Aug

    %% Back Substitution
    X(N) = Aug(N,N+1)/Aug(N,N);
    for k = N-1:-1:1
        X(k) = (Aug(k,N+1) - Aug(k,k+1:N)*X(k+1:N))/Aug(k,k);
    end
    X
end
