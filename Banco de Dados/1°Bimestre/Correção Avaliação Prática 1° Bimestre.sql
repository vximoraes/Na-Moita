/*Quais bens dos candidatos possuem as seguintes características?

Possuem a descrição "MOEDA CORRENTE"
Possuem valor entre mil e cem mil reais*/
SELECT 
    *
FROM
    tb_bens_candidatos
WHERE
    ds_bem_candidato = 'MOEDA CORRENTE'
        AND vlr_bem_candidato BETWEEN 1000 AND 100000;



/*Quais são os registros de bens de candidatos com valores dos bens do candidato superiores a um milhão?*/
SELECT 
    *
FROM
    tb_bens_candidatos
WHERE
    vlr_bem_candidato > 1000000;



/*Quais são as pesquisas eleitorais que possuem as seguintes características?

Foram iniciadas antes do mês de agosto de 2022
Tiveram um valor superior a 15 mil reais
Não foram realizadas pela empresa de nome fantasia "PERFIL PESQUISAS"*/
SELECT 
    *
FROM
    tb_pesquisas_eleitorais
WHERE
    MONTH(dt_inicio_pesquisa) < 8
        AND vr_pesquisa > 15000
        AND NOT nm_empresa_fantasia = 'PERFIL PESQUISAS';


/*Quais registros de boletins de urnas possuem as seguintes características?

Possuem um dos seguintes nomes de votável:
"CIRONE DEIRÓ"
"ISMAEL CRISPIN"
São do município de "GUAJARÁ-MIRIM"*/
SELECT 
    *
FROM
    tb_boletins_urnas
WHERE
    (nm_votavel = 'CIRONE DEIRÓ'
        OR nm_votavel = 'ISMAEL CRISPIN')
        AND nm_municipio = 'GUAJARÁ-MIRIM';
        
        
        
/*Quais candidatos possuem as seguintes características?

Situação de totalização do candidato (ds_sit_tot_turno) como 'ELEITO'
São "CASADO(A)"*/
SELECT 
    *
FROM
    tb_candidatos
WHERE
    ds_sit_tot_turno = 'ELEITO'
        AND ds_estado_civil = 'CASADO(A)';
        
        
	
/*Quais candidatos possuem as seguintes características?

São de um dos seguintes partidos:
"PARTIDO DA MULHER BRASILEIRA"
"PARTIDO SOCIAL CRISTÃO"
"PATRIOTA"
Nasceram em um dos seguintes municípios:
"PORTO VELHO"
"CACOAL"
Não são da cor/raça "PRETA"*/
SELECT 
    *
FROM
    tb_candidatos
WHERE
    (nm_partido = 'PATRIOTA'
        OR nm_partido = 'PARTIDO DA MULHER BRASILEIRA'
        OR nm_partido = 'PARTIDO SOCIAL CRISTÃO')
        AND (nm_municipio_nascimento = 'PORTO VELHO'
        OR nm_municipio_nascimento = 'CACOAL')
        AND ds_cor_raca != 'PRETA';
        
        
        
/*Quais são os registros de boletins de urnas do município de "'JI-PARANÁ" que são do partido de nº "13" ou de nº "22" e que possuem a quantidade de votos (qt_votos) entre 80 e 100?*/
SELECT 
    *
FROM
    tb_boletins_urnas
WHERE
    (nr_partido = 13 OR nr_partido = 22)
        AND nm_municipio = 'JI-PARANÁ'
        AND qt_votos BETWEEN 80 AND 100;
        
        
        
/*Quais mesários possuem as seguintes características?

Possuem o grau de escolaridade "ENSINO FUNDAMENTAL INCOMPLETO"
Não são "SOLTEIRO"*/
SELECT 
    *
FROM
    tb_mesarios
WHERE
    ds_grau_escolaridade = 'ENSINO FUNDAMENTAL INCOMPLETO'
        AND NOT ds_estado_civil = 'SOLTEIRO'; 