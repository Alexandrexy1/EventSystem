INSERT INTO tb_category(description) VALUES ('Physics');
INSERT INTO tb_category(description) VALUES ('Mental');

INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Jump hope', 'Just jump, finish and gain 20', 8.0, 1);
INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Run', 'Just run, finish and gain 20', 8.0, 1);
INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Math', 'Just calculate, finish and gain 20', 8.0, 1);
INSERT INTO tb_activity(name, description, price, category_id) VALUES ('Logical', 'Just finish first and gain 20', 8.0, 1);

INSERT INTO tb_participant(name, email) VALUES ('Alex', 'alex@test.com');
INSERT INTO tb_participant(name, email) VALUES ('Ana', 'ana@test.com');
INSERT INTO tb_participant(name, email) VALUES ('Joao', 'joao@test.com');
INSERT INTO tb_participant(name, email) VALUES ('Marcio', 'marcio@test.com');
INSERT INTO tb_participant(name, email) VALUES ('Leo', 'leo@test.com');

INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (1, 1);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (2, 3);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (3, 2);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (2, 4);
INSERT INTO tb_activity_participant(activity_id, participant_id) VALUES (4, 5);

INSERT INTO tb_block(start, ending) VALUES (TIMESTAMP WITH TIME ZONE '2024-05-07T09:15:00Z', TIMESTAMP WITH TIME ZONE '2024-05-07T11:30:00Z')
INSERT INTO tb_block(start, ending) VALUES (TIMESTAMP WITH TIME ZONE '2024-05-07T09:20:00Z', TIMESTAMP WITH TIME ZONE '2024-05-07T11:35:00Z')

INSERT INTO tb_block_activity(block_id, activity_id) VALUES (1, 1);
INSERT INTO tb_block_activity(block_id, activity_id) VALUES (1, 2);
INSERT INTO tb_block_activity(block_id, activity_id) VALUES (2, 3);
INSERT INTO tb_block_activity(block_id, activity_id) VALUES (2, 4);
