FasdUAS 1.101.10   ��   ��    k             l      ��  ��    | v
	Log use of the script
	Takes scriptType as input text, appends an entry to the log file with
	current date and time
     � 	 	 � 
 	 L o g   u s e   o f   t h e   s c r i p t 
 	 T a k e s   s c r i p t T y p e   a s   i n p u t   t e x t ,   a p p e n d s   a n   e n t r y   t o   t h e   l o g   f i l e   w i t h 
 	 c u r r e n t   d a t e   a n d   t i m e 
   
  
 l     ��������  ��  ��     ��  i         I      �� ���� 0 logscriptuse logScriptUse   ��  o      ���� 0 
scripttype 
scriptType��  ��    k     <       r     	    I    �� ��
�� .sysoloadscpt        file  c         m        �   � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : F o r m a t   D a t e . s c p t  m    ��
�� 
alis��    o      ���� 0 mydateformat myDateFormat      r   
     n   
      I    �������� 0 date_format  ��  ��     o   
 ���� 0 mydateformat myDateFormat  o      ���� 0 formatteddate formattedDate   ! " ! l   ��������  ��  ��   "  # $ # r    % % & % b    # ' ( ' b    ! ) * ) b     + , + l    -���� - b     . / . b     0 1 0 o    ���� 0 formatteddate formattedDate 1 m     2 2 � 3 3    / n     4 5 4 1    ��
�� 
tstr 5 l    6���� 6 I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   , m     7 7 � 8 8  , * o     ���� 0 
scripttype 
scriptType ( o   ! "��
�� 
ret  & o      ���� 0 	this_data   $  9 : 9 r   & ) ; < ; m   & ' = = � > > � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : S c r i p t L o g . t x t < o      ���� 0 	this_file   :  ? @ ? l  * *��������  ��  ��   @  A B A r   * 3 C D C I  * 1�� E��
�� .sysoloadscpt        file E c   * - F G F m   * + H H � I I � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : A p p e n d   T o   F i l e . s c p t G m   + ,��
�� 
alis��   D o      ����  0 myappendtofile myAppendToFile B  J�� J n   4 < K L K I   5 <�� M���� 0 appendtofile   M  N O N o   5 6���� 0 	this_data   O  P Q P o   6 7���� 0 	this_file   Q  R�� R m   7 8��
�� boovtrue��  ��   L o   4 5����  0 myappendtofile myAppendToFile��  ��       �� S T��   S ���� 0 logscriptuse logScriptUse T �� ���� U V���� 0 logscriptuse logScriptUse�� �� W��  W  ���� 0 
scripttype 
scriptType��   U �������������� 0 
scripttype 
scriptType�� 0 mydateformat myDateFormat�� 0 formatteddate formattedDate�� 0 	this_data  �� 0 	this_file  ��  0 myappendtofile myAppendToFile V  ������ 2���� 7�� = H��
�� 
alis
�� .sysoloadscpt        file�� 0 date_format  
�� .misccurdldt    ��� null
�� 
tstr
�� 
ret �� 0 appendtofile  �� =��&j E�O�j+ E�O��%*j �,%�%�%�%E�O�E�O��&j E�O���em+ ascr  ��ޭ