use eleicoes_2022;

select * from tb_bens_candidatos where ds_bem_candidato = 'MOEDA CORRENTE' and vlr_bem_candidato between 1000 and 100000;

select * from tb_bens_candidatos where vlr_bem_candidato >= '1000000';

select * from tb_pesquisas_eleitorais where vr_pesquisa >= 15000 and nm_empresa_fantasia != 'PERFIL PESQUISAS';

select * from tb_boletins_urnas where nm_votavel = 'ISMAEL CRISPIN' and nm_municipio = 'GUAJARÁ-MIRIM';

select * from tb_candidatos where ds_sit_tot_turno = 'ELEITO' and ds_estado_civil = 'CASADO(A)';

select * from tb_candidatos where nm_partido = 'PARTIDO DA MULHER BRASILEIRA' and 'PARTIDO SOCIAL CRISTÃO' and 'PATRIOTA' and nm_municipio_nascimento = 'PORTO VELHO' and 'CACOAL' and ds_cor_raca != 'PRETA';  

select * from tb_candidatos where nm_partido = 'PATRIOTA' and nm_municipio_nascimento = 'CACOAL' and ds_cor_raca != 'PRETA';


select * from tb_mesarios where ds_grau_escolaridade = 'ENSINO FUNDAMENTAL INCOMPLETO' and ds_estado_civil = 'SOLTEIRO'; 