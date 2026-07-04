% Excerpt from Radius_Conversion.m
% Convert radius histograms into observation-level vectors.
% Each radius value is repeated according to its exported frequency.

SEM7_M5_final_array = get_array(SEM7_M5)';
SEM7_S1_final_array = get_array(SEM7_S1)';
SEM7_T6_final_array = get_array(SEM7_T6)';

function [true_array] = get_array(array)
    true_array = [0];
    for i = 1:length(array)
        num_indices = array(2,i);
        value = array(1,i);
        for j = 1:num_indices
            true_array(end+1) = value;
        end
    end
end