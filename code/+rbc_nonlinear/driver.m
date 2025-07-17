%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'rbc_nonlinear';
M_.dynare_version = '6.4';
oo_.dynare_version = '6.4';
options_.dynare_version = '6.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'epsa'};
M_.exo_names_tex(1) = {'epsa'};
M_.exo_names_long(1) = {'epsa'};
M_.endo_names = cell(9,1);
M_.endo_names_tex = cell(9,1);
M_.endo_names_long = cell(9,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'y'};
M_.endo_names_long(1) = {'y'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'k'};
M_.endo_names_tex(3) = {'k'};
M_.endo_names_long(3) = {'k'};
M_.endo_names(4) = {'l'};
M_.endo_names_tex(4) = {'l'};
M_.endo_names_long(4) = {'l'};
M_.endo_names(5) = {'a'};
M_.endo_names_tex(5) = {'a'};
M_.endo_names_long(5) = {'a'};
M_.endo_names(6) = {'r'};
M_.endo_names_tex(6) = {'r'};
M_.endo_names_long(6) = {'r'};
M_.endo_names(7) = {'w'};
M_.endo_names_tex(7) = {'w'};
M_.endo_names_long(7) = {'w'};
M_.endo_names(8) = {'iv'};
M_.endo_names_tex(8) = {'iv'};
M_.endo_names_long(8) = {'iv'};
M_.endo_names(9) = {'mc'};
M_.endo_names_tex(9) = {'mc'};
M_.endo_names_long(9) = {'mc'};
M_.endo_partitions = struct();
M_.param_names = cell(8,1);
M_.param_names_tex = cell(8,1);
M_.param_names_long = cell(8,1);
M_.param_names(1) = {'ALPHA'};
M_.param_names_tex(1) = {'ALPHA'};
M_.param_names_long(1) = {'ALPHA'};
M_.param_names(2) = {'BETA'};
M_.param_names_tex(2) = {'BETA'};
M_.param_names_long(2) = {'BETA'};
M_.param_names(3) = {'DELTA'};
M_.param_names_tex(3) = {'DELTA'};
M_.param_names_long(3) = {'DELTA'};
M_.param_names(4) = {'GAMMA'};
M_.param_names_tex(4) = {'GAMMA'};
M_.param_names_long(4) = {'GAMMA'};
M_.param_names(5) = {'PSI'};
M_.param_names_tex(5) = {'PSI'};
M_.param_names_long(5) = {'PSI'};
M_.param_names(6) = {'ETAC'};
M_.param_names_tex(6) = {'ETAC'};
M_.param_names_long(6) = {'ETAC'};
M_.param_names(7) = {'ETAL'};
M_.param_names_tex(7) = {'ETAL'};
M_.param_names_long(7) = {'ETAL'};
M_.param_names(8) = {'RHOA'};
M_.param_names_tex(8) = {'RHOA'};
M_.param_names_long(8) = {'RHOA'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 9;
M_.param_nbr = 8;
M_.orig_endo_nbr = 9;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 9;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 3 0;
 0 4 12;
 1 5 0;
 0 6 0;
 2 7 0;
 0 8 13;
 0 9 0;
 0 10 0;
 0 11 0;]';
M_.nstatic = 5;
M_.nfwrd   = 2;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 2;
M_.ndynamic   = 4;
M_.dynamic_tmp_nbr = [6; 1; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'uc' ;
  2 , 'name' , 'w' ;
  3 , 'name' , 'k' ;
  4 , 'name' , 'y' ;
  5 , 'name' , '5' ;
  6 , 'name' , 'mc' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'r' ;
  9 , 'name' , '9' ;
};
M_.mapping.y.eqidx = [4 5 7 8 ];
M_.mapping.c.eqidx = [1 2 4 ];
M_.mapping.k.eqidx = [3 5 8 ];
M_.mapping.l.eqidx = [2 5 7 ];
M_.mapping.a.eqidx = [5 9 ];
M_.mapping.r.eqidx = [1 8 ];
M_.mapping.w.eqidx = [2 7 ];
M_.mapping.iv.eqidx = [3 4 ];
M_.mapping.mc.eqidx = [6 ];
M_.mapping.epsa.eqidx = [9 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 1;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 6];
M_.block_structure.block(1).variable = [ 9];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 1;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [2 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 9];
M_.block_structure.block(2).variable = [ 5];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 8;
M_.block_structure.block(3).endo_nbr = 7;
M_.block_structure.block(3).mfs = 6;
M_.block_structure.block(3).equation = [ 2 4 5 7 3 1 8];
M_.block_structure.block(3).variable = [ 7 8 4 1 3 2 6];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 19;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [4 0 7 8 9 10 11 12 17 18 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([]);
M_.block_structure.block(1).g1_sparse_colval = int32([]);
M_.block_structure.block(1).g1_sparse_colptr = int32([]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([2 4 6 1 4 2 3 1 2 3 6 4 1 3 5 6 5 5 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([4 4 4 7 7 8 8 9 9 9 9 10 11 11 11 12 17 18 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 1 1 1 4 4 4 6 8 12 13 16 17 17 17 17 17 18 19 ]);
M_.block_structure.variable_reordered = [ 9 5 7 8 4 1 3 2 6];
M_.block_structure.equation_reordered = [ 6 9 2 4 5 7 3 1 8];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 3 3;
 5 3;
 8 3;
 9 5;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 2;
 2 2;
 2 4;
 2 7;
 3 3;
 3 8;
 4 1;
 4 2;
 4 8;
 5 1;
 5 4;
 5 5;
 6 9;
 7 1;
 7 4;
 7 7;
 8 1;
 8 6;
 9 5;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 1 2;
 1 6;
];
M_.block_structure.dyn_tmp_nbr = 6;
M_.state_var = [5 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(8, 1);
M_.endo_trends = struct('deflator', cell(9, 1), 'log_deflator', cell(9, 1), 'growth_factor', cell(9, 1), 'log_growth_factor', cell(9, 1));
M_.NNZDerivatives = [26; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([3 5 8 9 4 5 7 8 1 2 4 3 2 5 7 5 9 8 2 7 3 4 6 1 1 9 ]);
M_.dynamic_g1_sparse_colval = int32([3 3 3 5 10 10 10 10 11 11 11 12 13 13 13 14 14 15 16 16 17 17 18 20 24 28 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 4 4 5 5 5 5 5 9 12 13 16 18 19 21 23 24 24 25 25 25 25 26 26 26 26 27 ]);
M_.lhs = {
'GAMMA*c^(-ETAC)'; 
'w'; 
'k'; 
'y'; 
'y'; 
'mc'; 
'w'; 
'r'; 
'log(a)'; 
};
M_.static_tmp_nbr = [5; 1; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 1;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 6];
M_.block_structure_stat.block(1).variable = [ 9];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 9];
M_.block_structure_stat.block(2).variable = [ 5];
M_.block_structure_stat.block(3).Simulation_Type = 6;
M_.block_structure_stat.block(3).endo_nbr = 7;
M_.block_structure_stat.block(3).mfs = 7;
M_.block_structure_stat.block(3).equation = [ 3 4 5 1 7 8 2];
M_.block_structure_stat.block(3).variable = [ 8 2 1 6 4 3 7];
M_.block_structure_stat.variable_reordered = [ 9 5 8 2 1 6 4 3 7];
M_.block_structure_stat.equation_reordered = [ 6 9 3 4 5 1 7 8 2];
M_.block_structure_stat.incidence.sparse_IM = [
 1 2;
 1 6;
 2 2;
 2 4;
 2 7;
 3 3;
 3 8;
 4 1;
 4 2;
 4 8;
 5 1;
 5 3;
 5 4;
 5 5;
 6 9;
 7 1;
 7 4;
 7 7;
 8 1;
 8 3;
 8 6;
 9 5;
];
M_.block_structure_stat.tmp_nbr = 6;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 2 2 4 7 2 3 5 6 4 6 3 5 7 1 3 6 5 7 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 1 2 2 2 3 3 3 3 4 4 5 5 5 6 6 6 7 7 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 3 6 10 12 15 18 20 ]);
M_.static_g1_sparse_rowval = int32([4 5 7 8 1 2 4 3 5 8 2 5 7 5 9 1 8 2 7 3 4 6 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 2 2 2 3 3 3 4 4 4 5 5 6 6 7 7 8 8 9 ]);
M_.static_g1_sparse_colptr = int32([1 5 8 11 14 16 18 20 22 23 ]);
M_.params(1) = 0.35;
ALPHA = M_.params(1);
M_.params(2) = 0.99;
BETA = M_.params(2);
M_.params(3) = 0.025;
DELTA = M_.params(3);
M_.params(4) = 1;
GAMMA = M_.params(4);
M_.params(5) = 1.6;
PSI = M_.params(5);
M_.params(6) = 2;
ETAC = M_.params(6);
M_.params(7) = 1;
ETAL = M_.params(7);
M_.params(8) = 0.9;
RHOA = M_.params(8);
steady;
%
% SHOCKS instructions
%
M_.det_shocks = [ M_.det_shocks;
struct('exo_det',false,'exo_id',1,'type','level','periods',1:1,'value',(-0.1)) ];
M_.exo_det_length = 0;
options_.periods = 300;
oo_ = perfect_foresight_setup(M_, options_, oo_);
[oo_, Simulated_time_series] = perfect_foresight_solver(M_, options_, oo_);
var_list_ = {'c';'iv';'y'};
rplot(var_list_);
var_list_ = {'l';'w'};
rplot(var_list_);
var_list_ = {'r'};
rplot(var_list_);
var_list_ = {'k'};
rplot(var_list_);
var_list_ = {'a'};
rplot(var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'rbc_nonlinear_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
