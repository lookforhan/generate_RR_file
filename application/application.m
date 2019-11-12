% 生成rr文件
% foss_poly_1.inp
% t = GRF_EMT('foss_poly_1.inp');
t = GRF_EMT('MOD.inp');
t.collect_basic_information;
num = numel(t.Pipe_ID);
pgv_IX = 0.1254;
pgv_VIII = 0.0542;
pgv_VII = 0.0246;
t.Repair_Rate = num2cell(pgv_VIII*ones(num,1));
t.Material = repmat({'CI'},[num,1]);
t.check_data;
t.generate2table;
t.RR_table
writetable(t.RR_table,'MOD_rr_viii.txt',...
    'Delimiter','\t')
t.delete