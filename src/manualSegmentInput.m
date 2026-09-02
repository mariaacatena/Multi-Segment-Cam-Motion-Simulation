function [segments n_segments] = manualSegmentInput(condition)
    if(condition)
        n_segments = input('Number of segments: ');
        fprintf('\n1: parabolic motion\n2: cycloidal motion\n3: fifth-degree polynomial motion\n');
        segments = zeros(3, n_segments); % H, beta, type
        for i = 1:n_segments
            inputT = input('Insert a segments: [H, beta, type]: ');
            while(inputT(3)~=1 && inputT(3)~=2 && inputT(3)~=3)
                inputT = input('The type can only be 1, 2, or 3; please try again [H, beta, type]: ');
            end
            segments(:, i) =  [inputT(1) inputT(2) inputT(3)];
        end

        %verify that the sum of the angles does not exceed a full rotation
        somma_beta = 0;
        for i = 1:n_segments 
            somma_beta = somma_beta + segments(2,i); 
        end
        if(somma_beta>360) 
            fprintf('\nThe entered segments are invalid.');
            return
        end
    else
        segments = [1   4  -2   8  -6;
            30  60  45  35  10;
             3   2   1   2   1];
        n_segments = 5;
    end
end