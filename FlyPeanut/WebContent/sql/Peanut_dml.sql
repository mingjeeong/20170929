-- �� ���̺� DML

insert into customer values ('idisa1', 'password1', '�̿�ȣ', 'Lee', 'wonho', 'M', to_date('1993. 12. 11', 'yyyy. mm. dd'), 'korea', '010-3611-3608', 'leewonho93@naver.com', 'N', 'Y', '', 'vip', 50000, 50000);
insert into customer values ('idisa2', 'password2', '���ֿ�', 'Kang', 'guwon', 'F', to_date('2001. 02. 10', 'yyyy. mm. dd'), 'korea', '010-1233-4545', 'leewonho93@naver.com', 'Y', 'Y', '', 'silver', 400, 400);
insert into customer values ('idisa3', 'password3', 'ȫ����', 'Hong', 'gilelee', 'F', to_date('1998. 08. 08', 'yyyy. mm. dd'), 'usa', '010-3524-6567', 'leewonho93@naver.com', 'Y', 'N', '', 'gold', 8000, 12000);
insert into customer values ('idisa4', 'password4', 'ȫ�浿', 'Hong', 'giledong', 'M', to_date('1973. 05. 02', 'yyyy. mm. dd'), 'japen', '010-5678-6645', 'leewonho93@naver.com', 'N', 'N', '', 'silver', 350, 350);
insert into customer values ('idisa5', 'password5', '�����', 'Gile', 'ralim', 'M', to_date('1962. 11. 25', 'yyyy. mm. dd'), 'china', '010-2583-5621', 'leewonho93@naver.com', 'N', 'Y', '', 'gold', 12450, 51420);

-- ���� ���̺� DML

insert into employee values (201212, 'emp123', '�湫��', 'Gile', 'muwon', 'M', to_date('1962. 11. 25', 'yyyy. mm. dd'), '010-3214-5621', 'leewonho93@naver.com', '', 'E');
insert into employee values (185401, 'emp456', '������', 'Bee', 'hangja', 'M', to_date('1982. 01. 07', 'yyyy. mm. dd'), '010-3575-4565', 'bihang@hanmail.net', '', 'E');
insert into employee values (154821, 'emp789', '�蹫��', 'Kim', 'muri', 'F', to_date('1995. 04. 05', 'yyyy. mm. dd'), '010-6458-5621', 'sangsang@naver.com', '', 'E');
insert into employee values (587689, 'emp741', '�̸���', 'Lee', 'ridum', 'F', to_date('1965. 06. 21', 'yyyy. mm. dd'), '010-7642-5756', 'goodes@hanmail.net', '', 'E');
insert into employee values (542321, 'emp852', '���̿�', 'Kang', 'miyoung', 'F', to_date('1980. 07. 29', 'yyyy. mm. dd'), '010-1245-3568', 'dgdgfd@naver.com', '', 'E');
insert into employee values (1111111, '', '', '', '', '', to_date('', ''), '', '', '', 'A');

-- ����� ���̺� DML

insert into airplane values (25421, 'ABC-123', '������', 200, to_date('1993. 05. 02', 'yyyy. mm. dd'), 'bisu', '���� ����', 2, 'c', 4, 'd', 10, 'f');
insert into airplane values (15412, 'ABC-123', '������', 200, to_date('1993. 08. 22', 'yyyy. mm. dd'), 'bisu', '���� ����', 2, 'c', 4, 'd', 10, 'f');
insert into airplane values (25879, 'BCD-657', 'ȭ����', 20, to_date('1997. 06. 05', 'yyyy. mm. dd'), 'bee', '���� ����', 0, 'A', 0, 'd', 10, 'B');
insert into airplane values (46564, 'ABC-123', '������', 200, to_date('2003. 05. 02', 'yyyy. mm. dd'), 'bisu', '������', 2, 'c', 4, 'd', 10, 'f');
insert into airplane values (21212, 'BCD-657', 'ȭ����', 20, to_date('1996. 08. 08', 'yyyy. mm. dd'), 'bee', '���� ����', 0, 'A', 0, 'd', 10, 'B');

-- �Խ��� ���̺� DML

insert into board values(1, '�����Դϴ�', '������ �ֽ��ϴ�', 'idisa1', to_date(sysdate, 'yyyy. mm. dd'), 'Y');
insert into board values(2, '�ȳ��ϼ���', '�ȳ��Ͻʴϱ�', 'idisa1', to_date(sysdate, 'yyyy. mm. dd'), 'N');
insert into board values(3, 'test�Դϴ�', 'test', 'idisa3', to_date(sysdate, 'yyyy. mm. dd'), 'N');
insert into board values(4, 'testtest', 'testtest', 'idisa3', to_date(sysdate, 'yyyy. mm. dd'), 'N');
insert into board values(5, '�׽�Ʈ', '�׽�Ʈ�Դϴ�', 'idisa3', to_date(sysdate, 'yyyy. mm. dd'), 'N');

-- �������� ���̺� DML

insert into notice values(1, '�ʵ�', '�������װԽ����Դϴ�', to_date('2017. 09. 26','yyyy. mm. dd'));
insert into notice values(2, '�ʵ����ּ���', '�������װԽ����Դϴ�', to_date('2017. 09. 25','yyyy. mm. dd'));
insert into notice values(3, '��������', '�������װԽ����Դϴ�', to_date('2017. 09. 24','yyyy. mm. dd'));
insert into notice values(4, '����Ʈ ���� �ȳ�', '�������װԽ����Դϴ�', to_date('2017. 09. 23','yyyy. mm. dd'));
insert into notice values(5, '�߰� ���� �ȳ�', '�������װԽ����Դϴ�', to_date('2017. 09. 22','yyyy. mm. dd'));

-- ��� ���̺� DML
insert into reply values(1, '�ȳ��ϼ���', to_date(sysdate, 'yyyy. mm. dd'));
insert into reply values(2, '�ݰ����ϴ�', to_date('2017. 09. 29','yyyy. mm. dd'));
insert into reply values(3, '��������', to_date('2017. 09. 28','yyyy. mm. dd'));
insert into reply values(4, '�ݰ�����', to_date('2017. 09. 27','yyyy. mm. dd'));
insert into reply values(5, '������', to_date('2017. 09. 26','yyyy. mm. dd'));


