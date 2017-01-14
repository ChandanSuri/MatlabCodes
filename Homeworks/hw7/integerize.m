function cl = integerize(A)
classes = cell(1,4);
classes{1} = 'int8';classes{2} = 'int16';classes{3} = 'int32';classes{4} = 'int64';
min_class_ind = 0;
A = A(:);
for ind=1:size(A,1)
    i = A(ind);
    for j = 1:4
        if i >= intmin(classes{j}) && i <= intmax(classes{j})
            if j > min_class_ind
                min_class_ind = j;
            end
            break;
        end
    end
end
if min_class_ind~=0
    cl = classes{min_class_ind};
else
    cl = 'NONE';
end
end
