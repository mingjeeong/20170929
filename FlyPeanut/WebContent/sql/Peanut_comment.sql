-- �� ���̺�

comment on table CUSTOMER is '�� ���̺�';

comment on column CUSTOMER.C_ID is '�� ���̵�';
comment on column CUSTOMER.C_PW is '�� ��й�ȣ';
comment on column CUSTOMER.C_KNAME is '�� �ѱ� �̸�';
comment on column CUSTOMER.C_ELNAME is '�� ���� (��)';
comment on column CUSTOMER.C_EFNAME is '�� ���� (�̸�)';
comment on column CUSTOMER.C_SEX is '�� ����';
comment on column CUSTOMER.C_BIRTH is '�� �������';
comment on column CUSTOMER.C_NATION is '�� ����';
comment on column CUSTOMER.C_MOBILE is '�� ��ȭ��ȣ';
comment on column CUSTOMER.C_EMAIL is '�� �̸���';
comment on column CUSTOMER.C_EMAILCH is '�� �̸��� ���� ����';
comment on column CUSTOMER.C_MOBILECH is '�� ��ȭ��ȣ ���� ����';
comment on column CUSTOMER.C_ADDRESS is '�� �ּ�';
comment on column CUSTOMER.C_GRADE is '�� ���';
comment on column CUSTOMER.C_MILE is '�� ���ϸ���';
comment on column CUSTOMER.TOTALMILE is '�� �� �� ���ϸ���';

-- ���� comment
comment on table EMPLOYEE is '���� ���̺�';

comment on column EMPLOYEE.E_ID is '���� ���̵�';
comment on column EMPLOYEE.E_PW is '���� ��й�ȣ';
comment on column EMPLOYEE.E_KNAME is '���� �ѱ� �̸�';
comment on column EMPLOYEE.E_EFNAME is '���� ���� (��)';
comment on column EMPLOYEE.E_ELNAME is '���� ���� (�̸�)';
comment on column EMPLOYEE.E_SEX is '���� ����';
comment on column EMPLOYEE.E_BIRTH is '���� �������';
comment on column EMPLOYEE.E_MOBILE is '���� ��ȭ��ȣ';
comment on column EMPLOYEE.E_EMAIL is '���� �̸���';
comment on column EMPLOYEE.E_ADDRESS is '���� �ּ�';
comment on column EMPLOYEE.E_STATUS is '���� ������ ����';

-- ���� comment
comment on table AIRPLANE is '����� ���̺�';

comment on column AIRPLANE.A_NUM is '����� ������ȣ';
comment on column AIRPLANE.A_KIND is '����� ����';
comment on column AIRPLANE.A_TYPE is '����� ����';
comment on column AIRPLANE.A_PAX is '����� �ִ� ž�� �ο�';
comment on column AIRPLANE.A_MDATE is '����� ���۳⵵';
comment on column AIRPLANE.A_MAKE is '����� ������';
comment on column AIRPLANE.A_STATE is '����� ����(����, ���� etc)';
comment on column AIRPLANE.A_FIRROW is '����� �۽�Ʈ �¼� ��';
comment on column AIRPLANE.A_FIRCOL is '����� �۽�Ʈ �¼� ��';
comment on column AIRPLANE.A_BINROW is '����� ����Ͻ� �¼� ��';
comment on column AIRPLANE.A_BINCOL is '����� ����Ͻ� �¼� ��';
comment on column AIRPLANE.A_ECOROW is '����� ���ڳ�� �¼� ��';
comment on column AIRPLANE.A_ECOCOL is '����� ���ڳ�� �¼� ��';

-- �������� comment
comment on table FLIGHT is '�������� ���̺�';

comment on column FLIGHT.F_DATE is '��������';
comment on column FLIGHT.F_ANUM is '����� ��ȣ';
comment on column FLIGHT.F_FNAME is '���';
comment on column FLIGHT.F_LEAVE is '�����';
comment on column FLIGHT.F_LEVDATE is '�������';
comment on column FLIGHT.F_ARRIVE is '������';
comment on column FLIGHT.F_ARRIDATE is '��������';
comment on column FLIGHT.F_GATE is '����� ����Ʈ';

-- ���� comment
comment on table RESERVATION is '���� ���̺�';

comment on column RESERVATION.R_NUM is '���� ��ȣ';
comment on column RESERVATION.R_NAME is '������ ��';
comment on column RESERVATION.R_DEPARTURE is '�����';
comment on column RESERVATION.R_DEPARTURETIME is '�������';
comment on column RESERVATION.R_ARRIVAL is '������';
comment on column RESERVATION.R_ARRIVALTIME is '��������';
comment on column RESERVATION.R_SEAT is '�¼�';
comment on column RESERVATION.R_ANUM is '����� ��ȣ';
comment on column RESERVATION.R_DATE is '���� ��¥';
comment on column RESERVATION.R_FNAME is '���';
comment on column RESERVATION.R_CLASS is 'Ŭ����';

-- ǥ comment
comment on table TICKET is '����� ǥ ���̺�';

comment on column TICKET.T_NAME is '����� ž����';
comment on column TICKET.T_DATE is '���� ����';
comment on column TICKET.T_SEAT is '�¼�';
comment on column TICKET.T_DEPARTURE is '�����';
comment on column TICKET.T_DEPARTURETIME is '�������';
comment on column TICKET.T_ARRIVAL is '������';
comment on column TICKET.T_ARRIVALTIME is '��������';
comment on column TICKET.T_CLASS is 'Ŭ����';
comment on column TICKET.T_GATE is '����Ʈ';
comment on column TICKET.T_FNAME is '���';
comment on column TICKET.T_BAGNUM is '���Ϲ� ��ȣ';

-- �������� comment
comment on table NOTICE is '�������� ���̺�';

comment on column NOTICE.N_NUM is '�Խù� ��ȣ';
comment on column NOTICE.N_TITLE is '����';
comment on column NOTICE.N_CONTENTS is '����';
comment on column NOTICE.N_DATE is '��� ����';

-- �Խ��� comment
comment on table BOARD is '�Խ��� ���̺�';

comment on column BOARD.B_NUM is '�Խù� ��ȣ';
comment on column BOARD.B_TITLE is '����';
comment on column BOARD.B_CONTENTS is '����';
comment on column BOARD.B_ID is '�ۼ���';
comment on column BOARD.B_DATE is '�ۼ���';
comment on column BOARD.B_CHECK is '�亯 ����';

-- �Խ��� comment
comment on table REPLY is '�亯 ���̺�';

comment on column REPLY.REP_NUM is '�亯 ��ȣ';
comment on column REPLY.REP_CONTENTS is '����';
comment on column REPLY.REP_DATE is '�亯 ����';

-- �����ȣ(���θ�) comment
comment on table POST is '�ּ� ���̺�';

comment on column POST.P_POST is '���� ��ȣ';
comment on column POST.P_DO is '�� ����';
comment on column POST.P_GU is '�� ����';
comment on column POST.P_ROAD is '���θ�';
comment on column POST.P_RFIRST is '���θ� ��ȣ(��)';
comment on column POST.P_RSECOND is '���θ� ��ȣ(��)';
comment on column POST.P_BUILD is '�ǹ���';
comment on column POST.P_DONG is '�� ����';
comment on column POST.P_SUBDONG is '��(��) ����';
comment on column POST.P_DFIRST is '�� ��ȣ(��)';
comment on column POST.P_DSECOND is '�� ��ȣ(��)';



