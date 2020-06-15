
insert into TB_BOT (ID_BOT, DEFAULT_ANSWER, DOWNTIME, FAREWELL_MSG, NAME, WELCOME_MSG) values(BOT_SEQ.NEXTVAL, 'Desculpe, n�o entendi', 3, 'At� mais!', 'BOT UNO', 'Opa!');

insert into TB_BOT (ID_BOT, DEFAULT_ANSWER, DOWNTIME, FAREWELL_MSG, NAME, WELCOME_MSG) values(BOT_SEQ.NEXTVAL, 'N�o entendi a pergunta', 2, 'Obrigado! Tchau', 'BOT DOS', 'Ol�, como vai?');

insert into TB_BOT (ID_BOT, DEFAULT_ANSWER, DOWNTIME, FAREWELL_MSG, NAME, WELCOME_MSG) values(BOT_SEQ.NEXTVAL, 'N�o sei a resposta', 3, 'Vai com Deus!', 'BOT TRES', 'Eai! Tudo bem?');

insert into TB_BOT (ID_BOT, DEFAULT_ANSWER, DOWNTIME, FAREWELL_MSG, NAME, WELCOME_MSG) values(BOT_SEQ.NEXTVAL, 'Oi?', 3, 'Adeus!', 'BOT CUATRO', 'Oi! Tudo bom?');

------------------------------------------------------------------------------------------------------

insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 1', 1);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 3', 1);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 5', 1);

insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 1', 2);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 2', 2);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 4', 2);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 5', 2);

insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 1', 3);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 2', 3);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 3', 3);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 4', 3);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 5', 3);

insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 1', 4);
insert into TB_SEGMENT (ID_SEGMENT, NAME, TB_BOT) values(SEGMENT_SEQ.NEXTVAL, 'Conversa 3', 4);