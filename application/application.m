% 生成rr文件
% foss_poly_1.inp
% t = GRF_EMT('foss_poly_1.inp');
t = GRF_EMT('MOD.inp');
t.collect_basic_information;
num = numel(t.Pipe_ID);
t.Repair_Rate = num2cell(0.1254*ones(num,1));
t.Material = repmat({'CI'},[num,1]);
t.check_data;
t.generate2table;
t.RR_table
writetable(t.RR_table,'mod_rr.txt',...
    'Delimiter','\t')
t.delete