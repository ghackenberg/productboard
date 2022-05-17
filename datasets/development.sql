PGDMP                         z        	   dummyData    14.2 (Debian 14.2-1.pgdg110+1)    14.2 (    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    16514 	   dummyData    DATABASE     _   CREATE DATABASE "dummyData" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE "dummyData";
                postgres    false            �            1259    16553    comment_entity    TABLE     ^  CREATE TABLE public.comment_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    "userId" character varying NOT NULL,
    "issueId" character varying NOT NULL,
    "time" character varying NOT NULL,
    text character varying NOT NULL,
    action character varying DEFAULT 'none'::character varying NOT NULL
);
 "   DROP TABLE public.comment_entity;
       public         heap    postgres    false            �            1259    16560    issue_entity    TABLE     �  CREATE TABLE public.issue_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    "userId" character varying NOT NULL,
    "productId" character varying NOT NULL,
    "time" character varying NOT NULL,
    label character varying NOT NULL,
    text character varying NOT NULL,
    state character varying DEFAULT 'open'::character varying NOT NULL,
    "assigneeIds" text NOT NULL,
    "milestoneId" character varying
);
     DROP TABLE public.issue_entity;
       public         heap    postgres    false            �            1259    16520    member_entity    TABLE     �   CREATE TABLE public.member_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    "productId" character varying NOT NULL,
    "userId" character varying NOT NULL
);
 !   DROP TABLE public.member_entity;
       public         heap    postgres    false            �            1259    16528    milestone_entity    TABLE     ?  CREATE TABLE public.milestone_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    "userId" character varying NOT NULL,
    "productId" character varying NOT NULL,
    label character varying NOT NULL,
    start character varying NOT NULL,
    "end" character varying NOT NULL
);
 $   DROP TABLE public.milestone_entity;
       public         heap    postgres    false            �            1259    16567    product_entity    TABLE     �   CREATE TABLE public.product_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    "userId" character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);
 "   DROP TABLE public.product_entity;
       public         heap    postgres    false            �            1259    16515    typeorm_metadata    TABLE     �   CREATE TABLE public.typeorm_metadata (
    type character varying NOT NULL,
    database character varying,
    schema character varying,
    "table" character varying,
    name character varying,
    value text
);
 $   DROP TABLE public.typeorm_metadata;
       public         heap    postgres    false            �            1259    16543    user_entity    TABLE       CREATE TABLE public.user_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    email character varying NOT NULL,
    name character varying NOT NULL,
    password character varying NOT NULL,
    "pictureId" character varying NOT NULL
);
    DROP TABLE public.user_entity;
       public         heap    postgres    false            �            1259    16535    version_entity    TABLE     �  CREATE TABLE public.version_entity (
    id character varying NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    "userId" character varying NOT NULL,
    "productId" character varying NOT NULL,
    "baseVersionIds" text NOT NULL,
    "time" character varying NOT NULL,
    major integer NOT NULL,
    minor integer NOT NULL,
    patch integer NOT NULL,
    description character varying NOT NULL
);
 "   DROP TABLE public.version_entity;
       public         heap    postgres    false            /          0    16553    comment_entity 
   TABLE DATA           `   COPY public.comment_entity (id, deleted, "userId", "issueId", "time", text, action) FROM stdin;
    public          postgres    false    214   O:       0          0    16560    issue_entity 
   TABLE DATA           �   COPY public.issue_entity (id, deleted, "userId", "productId", "time", label, text, state, "assigneeIds", "milestoneId") FROM stdin;
    public          postgres    false    215   �=       +          0    16520    member_entity 
   TABLE DATA           K   COPY public.member_entity (id, deleted, "productId", "userId") FROM stdin;
    public          postgres    false    210   �A       ,          0    16528    milestone_entity 
   TABLE DATA           c   COPY public.milestone_entity (id, deleted, "userId", "productId", label, start, "end") FROM stdin;
    public          postgres    false    211    C       1          0    16567    product_entity 
   TABLE DATA           R   COPY public.product_entity (id, deleted, "userId", name, description) FROM stdin;
    public          postgres    false    216   D       *          0    16515    typeorm_metadata 
   TABLE DATA           X   COPY public.typeorm_metadata (type, database, schema, "table", name, value) FROM stdin;
    public          postgres    false    209   
E       .          0    16543    user_entity 
   TABLE DATA           V   COPY public.user_entity (id, deleted, email, name, password, "pictureId") FROM stdin;
    public          postgres    false    213   'E       -          0    16535    version_entity 
   TABLE DATA           �   COPY public.version_entity (id, deleted, "userId", "productId", "baseVersionIds", "time", major, minor, patch, description) FROM stdin;
    public          postgres    false    212   F       �           2606    16542 -   version_entity PK_46457d1433e2433743db19f7f59 
   CONSTRAINT     m   ALTER TABLE ONLY public.version_entity
    ADD CONSTRAINT "PK_46457d1433e2433743db19f7f59" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.version_entity DROP CONSTRAINT "PK_46457d1433e2433743db19f7f59";
       public            postgres    false    212            �           2606    16559 -   comment_entity PK_5a439a16c76d63e046765cdb84f 
   CONSTRAINT     m   ALTER TABLE ONLY public.comment_entity
    ADD CONSTRAINT "PK_5a439a16c76d63e046765cdb84f" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.comment_entity DROP CONSTRAINT "PK_5a439a16c76d63e046765cdb84f";
       public            postgres    false    214            �           2606    16566 +   issue_entity PK_6d2db63009063b9271093fd13b2 
   CONSTRAINT     k   ALTER TABLE ONLY public.issue_entity
    ADD CONSTRAINT "PK_6d2db63009063b9271093fd13b2" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.issue_entity DROP CONSTRAINT "PK_6d2db63009063b9271093fd13b2";
       public            postgres    false    215            �           2606    16574 -   product_entity PK_6e8f75045ddcd1c389c765c896e 
   CONSTRAINT     m   ALTER TABLE ONLY public.product_entity
    ADD CONSTRAINT "PK_6e8f75045ddcd1c389c765c896e" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.product_entity DROP CONSTRAINT "PK_6e8f75045ddcd1c389c765c896e";
       public            postgres    false    216            �           2606    16527 ,   member_entity PK_74fbc25d2e0bf8e3884ac9354b4 
   CONSTRAINT     l   ALTER TABLE ONLY public.member_entity
    ADD CONSTRAINT "PK_74fbc25d2e0bf8e3884ac9354b4" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.member_entity DROP CONSTRAINT "PK_74fbc25d2e0bf8e3884ac9354b4";
       public            postgres    false    210            �           2606    16534 /   milestone_entity PK_8bdc5deebe72b7dec9950d2604d 
   CONSTRAINT     o   ALTER TABLE ONLY public.milestone_entity
    ADD CONSTRAINT "PK_8bdc5deebe72b7dec9950d2604d" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.milestone_entity DROP CONSTRAINT "PK_8bdc5deebe72b7dec9950d2604d";
       public            postgres    false    211            �           2606    16550 *   user_entity PK_b54f8ea623b17094db7667d8206 
   CONSTRAINT     j   ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT "PK_b54f8ea623b17094db7667d8206" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.user_entity DROP CONSTRAINT "PK_b54f8ea623b17094db7667d8206";
       public            postgres    false    213            �           2606    16552 *   user_entity UQ_415c35b9b3b6fe45a3b065030f5 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT "UQ_415c35b9b3b6fe45a3b065030f5" UNIQUE (email);
 V   ALTER TABLE ONLY public.user_entity DROP CONSTRAINT "UQ_415c35b9b3b6fe45a3b065030f5";
       public            postgres    false    213            �           2606    16615 +   issue_entity FK_03a6d234e95e8b464380056b34d    FK CONSTRAINT     �   ALTER TABLE ONLY public.issue_entity
    ADD CONSTRAINT "FK_03a6d234e95e8b464380056b34d" FOREIGN KEY ("userId") REFERENCES public.user_entity(id);
 W   ALTER TABLE ONLY public.issue_entity DROP CONSTRAINT "FK_03a6d234e95e8b464380056b34d";
       public          postgres    false    3210    213    215            �           2606    16600 -   version_entity FK_0c69da100b526232dfa46ba1c90    FK CONSTRAINT     �   ALTER TABLE ONLY public.version_entity
    ADD CONSTRAINT "FK_0c69da100b526232dfa46ba1c90" FOREIGN KEY ("productId") REFERENCES public.product_entity(id);
 Y   ALTER TABLE ONLY public.version_entity DROP CONSTRAINT "FK_0c69da100b526232dfa46ba1c90";
       public          postgres    false    212    3218    216            �           2606    16620 +   issue_entity FK_31b85793e20fe663da11f62f4d3    FK CONSTRAINT     �   ALTER TABLE ONLY public.issue_entity
    ADD CONSTRAINT "FK_31b85793e20fe663da11f62f4d3" FOREIGN KEY ("productId") REFERENCES public.product_entity(id);
 W   ALTER TABLE ONLY public.issue_entity DROP CONSTRAINT "FK_31b85793e20fe663da11f62f4d3";
       public          postgres    false    216    3218    215            �           2606    16595 -   version_entity FK_32505c73c9adb5464074bcc5906    FK CONSTRAINT     �   ALTER TABLE ONLY public.version_entity
    ADD CONSTRAINT "FK_32505c73c9adb5464074bcc5906" FOREIGN KEY ("userId") REFERENCES public.user_entity(id);
 Y   ALTER TABLE ONLY public.version_entity DROP CONSTRAINT "FK_32505c73c9adb5464074bcc5906";
       public          postgres    false    212    213    3210            �           2606    16590 /   milestone_entity FK_682bce40bc0372d593c81957cd1    FK CONSTRAINT     �   ALTER TABLE ONLY public.milestone_entity
    ADD CONSTRAINT "FK_682bce40bc0372d593c81957cd1" FOREIGN KEY ("productId") REFERENCES public.product_entity(id);
 [   ALTER TABLE ONLY public.milestone_entity DROP CONSTRAINT "FK_682bce40bc0372d593c81957cd1";
       public          postgres    false    3218    211    216            �           2606    16662 ,   member_entity FK_8bd41fc4efb4c90fe1faa631c62    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_entity
    ADD CONSTRAINT "FK_8bd41fc4efb4c90fe1faa631c62" FOREIGN KEY ("productId") REFERENCES public.product_entity(id);
 X   ALTER TABLE ONLY public.member_entity DROP CONSTRAINT "FK_8bd41fc4efb4c90fe1faa631c62";
       public          postgres    false    210    3218    216            �           2606    16630 -   product_entity FK_9b522961bc02b956d1699a23ae3    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_entity
    ADD CONSTRAINT "FK_9b522961bc02b956d1699a23ae3" FOREIGN KEY ("userId") REFERENCES public.user_entity(id);
 Y   ALTER TABLE ONLY public.product_entity DROP CONSTRAINT "FK_9b522961bc02b956d1699a23ae3";
       public          postgres    false    216    3210    213            �           2606    16667 ,   member_entity FK_b4349fa6345252b670a7ab0f032    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_entity
    ADD CONSTRAINT "FK_b4349fa6345252b670a7ab0f032" FOREIGN KEY ("userId") REFERENCES public.user_entity(id);
 X   ALTER TABLE ONLY public.member_entity DROP CONSTRAINT "FK_b4349fa6345252b670a7ab0f032";
       public          postgres    false    3210    210    213            �           2606    16585 /   milestone_entity FK_b97d81489387af0595e33625379    FK CONSTRAINT     �   ALTER TABLE ONLY public.milestone_entity
    ADD CONSTRAINT "FK_b97d81489387af0595e33625379" FOREIGN KEY ("userId") REFERENCES public.user_entity(id);
 [   ALTER TABLE ONLY public.milestone_entity DROP CONSTRAINT "FK_b97d81489387af0595e33625379";
       public          postgres    false    211    3210    213            �           2606    16610 -   comment_entity FK_d5a10b365505539d7e41941d312    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_entity
    ADD CONSTRAINT "FK_d5a10b365505539d7e41941d312" FOREIGN KEY ("issueId") REFERENCES public.issue_entity(id);
 Y   ALTER TABLE ONLY public.comment_entity DROP CONSTRAINT "FK_d5a10b365505539d7e41941d312";
       public          postgres    false    3216    214    215            �           2606    16605 -   comment_entity FK_e391949c5735c084dddcb6e6468    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_entity
    ADD CONSTRAINT "FK_e391949c5735c084dddcb6e6468" FOREIGN KEY ("userId") REFERENCES public.user_entity(id);
 Y   ALTER TABLE ONLY public.comment_entity DROP CONSTRAINT "FK_e391949c5735c084dddcb6e6468";
       public          postgres    false    213    3210    214            �           2606    16625 +   issue_entity FK_fc8cbe9f0c89471abe226892954    FK CONSTRAINT     �   ALTER TABLE ONLY public.issue_entity
    ADD CONSTRAINT "FK_fc8cbe9f0c89471abe226892954" FOREIGN KEY ("milestoneId") REFERENCES public.milestone_entity(id);
 W   ALTER TABLE ONLY public.issue_entity DROP CONSTRAINT "FK_fc8cbe9f0c89471abe226892954";
       public          postgres    false    211    3206    215            /   u  x���[��H �g�<�&Ku](n/�C��mG�7�P���_?�bð�+		�s�Ωr��q.��}�|aC�(
� �> !�q��_�c��%8�Cp����O��e|�c��z�y���s�A�*i�_S�,)�bX��N�`�8?�Ӡ��+�X��go��Cf���\�|�b!$�B�B�F\G��3*?�Raw�����T��P_=�ʝ.�E�m����I?���&N�����5PI#�jX�D��qC��>_��v�WM��(��AD%P�ߙ�
�Α%��.|�(Rf���`q���燑�;����)^���D�ӭO'v�N���`�f�Ͽ���o��>D�0�j��{}��ǵ )���7���=?��ic)B�v�,���Ȕ�qՈ
DI�q�"ƭm�9.i��6G�zǼGH�D#"�h\��f���ܯ��n�	�|�mC)�x��dƹw��c5ѱ�(9Ѡ�AdD���pȺ��)v�(����m;� ėPw��e9�紱�:�pKj	`Eδh���͸3-� 5��/���\����;���/h�5���&͸���Y+�֠���2�M���n�l������V���w��5���i
Qs��/1��8⢯i3|S�jQ�d\pr8N��.Q��p2z�1Ҡ
,g�ח���{�R:�5��L���=�m%Ӧdl&�4��)��ӾXܴ3�?��;���2P������R�/=���'�����a��W뵜V������>[��OϙnΗ�`P5;E_P���3v�S�1O�n��<��i�_��_0�Og2,"�I�0M~�Ǹ-L�e9O ��M�����'�U�f���]���E�&���fE(���}?����q�Ȁ���*��OQ���      0   �  x���]o�8��ï���4q>r�U�.ڊ~�v����;�6��v`2�~m'@�A��,�(�o��s&K������M}��]/��޽��v���=;D�9k��iN�Z R�@B@!	�Y,�D �0�P��p�v[�K])�Y���^X�Y���e�Nr�$P`�r�^-@�sY��@�DZi��@p��[kU�=��Ab��� �(�X�e�]k���r����7V��Rk���"UZD*�]k?�:�*�T#0�ԨX�J�X�+���<]'͹�W�;�TXפU?ե�GK� 	�4ˈ L�͂��|6�ݲר��]�&'H�H��+��-_$!�G�q9��hF�T��d~9���g���Z�~�x�J����~u��ˈn�\^쾪�iCX��~?0�1��yy�^[����-��<$_2.�:�C�� ݣ:�B�H�`4�U�fU�l5�^_�/�3��b��j������"=���$���Y�)/H����cՃ�T#�'�8�p�3<�slJ����z�0�貐4��u�Gu��p��=dr*�Sh��Qcd�ɰhn������h3+.%MhNUi?��Xp����v��k7׆?�5�U��̟9wJ�Q)�������9� �ӣr:_(�&A�}���>P6#�ߩ6�m� ���Yc��w�_ɶ1$A�W󃣶�f�DQe��4
ܺ�U���l�-�|��+[�+V���~���A���gǜ�ՏM�y����d�vg��^H]\>��U}�(��1��w��� d֞Z������e�]��fJ��c�A��8�n�k�$1kg+���������0�n���45k'2�M޾����q��3�Y'��ϭF��Q2��ӫ�1���n�Cf^��.�/{����������3�~#w�G[�N��I�����������.�����aw����0>;>¨��c�s7��n�a7}�y?A~h���{��Cot��^������0t������Z�� 5�_      +   D  x�m��n�@�k�]h��/!��*��"iB*,RD��ӗ�(��l���ِ�gN�I�?��
��Q�6M�}�M?��h���QYov˦�C�+Q��ٰԮ��^vI#�&�\�,��I����YUX�)NǢ1}EI�T�9j}{E=_OY�`��B�����p�Ą�y�$�3god�F#��HH5	첸����N�6��m����g���x]�H#ydo��J3i��J]�U�Ve�:���-�mH�冋hD��	���~�*�/��q�p�uβ�{��w�`�0�b�������N#f�Cam��|�  ~ �pՀ      ,   �   x���[�0���+���s��eT�a�����v�VQ�>(M4��`��=�����(B���m��)��E@ 0a�RAH�tB�� ��%@.���E�) �"��,o��%�"�E��LU�H��lY�
�z t�4G�wf;:�p�dx�
�i����md�);�,�.�}��4��-�k}<��҉�8�҇Cc���8��n0�vR�����=�j!\��5ԥ�i����#      1   �   x�e��N�0E�3_1?@E����ҊMٴ�
��G�:v�H��)���bc��չ�BV�.b6R{Z^��`_J�V2�8Eߑ�-����������@^�����a�}�0z�qB��v�8������ǫ�O��ښ�G�ݭu�X��m���B�!&��q����S��)��w�}?N�[pί�꜅���n�҇d�O����+�䄍�>M
U�z�x~���m�      *      x������ � �      .   �   x���1n� ��N�6�*�j�!�򀇡��DlE�ٲ�buB����7������JO:r��&��{�au��#���][��7��u\��v�ڀ���R�PP�xa��FKi�P��B�9�����ۑ�9��}a�1a~������.$�EPς�i~S_��O�]��\m��B������>�x`>ON1���Rj��/�R4��QJ��Z��      -     x����N�0���)�k�Ӯ�މ%ш�:�7�u�l�Vx~ǟ� FL/N{����%�V>C)J��@@|�L�hO	�xH$�O�mϸ�]Z�����,KoQٺ�N'����w'���鵷���T�W���t��̢�G�w6�߆֞n��f�6\mbTg�b׀5��q3�a4�7�$���AZ�cy��	{��r�q��&3�e4�O���� �rљ���%��P������ȑ���6���o��E\*N����@��ֽ��=����G"x������7�x��     