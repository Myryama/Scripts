FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Check the current network location
	Ask about switching; connect the VPN if Automatic is chosen
	Mount personal and general drives
     � 	 	
 
 	 C h e c k   t h e   c u r r e n t   n e t w o r k   l o c a t i o n 
 	 A s k   a b o u t   s w i t c h i n g ;   c o n n e c t   t h e   V P N   i f   A u t o m a t i c   i s   c h o s e n 
 	 M o u n t   p e r s o n a l   a n d   g e n e r a l   d r i v e s 
   
  
 l     ��������  ��  ��        l     ����  r         m        �   , N e t w o r k M a n a g e m e n t . s c p t  o      ���� 0 
scriptname 
scriptName��  ��        l     ��������  ��  ��        l    ����  O        O        k           e       c       !   l    "���� " n     # $ # 1    ��
�� 
pnam $ 1    ��
�� 
locc��  ��   ! m    ��
�� 
ctxt   %�� % r     & ' & l    (���� ( 1    ��
�� 
rslt��  ��   ' o      ���� "0 currentlocation currentLocation��    1    ��
�� 
netp  m     ) )�                                                                                  sevs  alis    �  Macintosh HD               ���H+   
�System Events.app                                               5����        ����  	                CoreServices    ��x�      ����     
� 
�  
��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     * + * l   � ,���� , O    � - . - k     � / /  0 1 0 l     �� 2 3��   2  activate    3 � 4 4  a c t i v a t e 1  5 6 5 Q     7 7 8 9 7 r   # * : ; : I  # (�� <��
�� .sysoexecTEXT���     TEXT < l  # $ =���� = m   # $ > > � ? ? t s c s e l e c t   |   a w k   ' { i f   ( $ 1 = = " * " )   p r i n t   $ 3 } '   |   s e d   ' s / [ ( ) ] / / g '��  ��  ��   ; o      ���� 0 network_location   8 R      ������
�� .ascrerr ****      � ****��  ��   9 I  2 7�� @��
�� .sysodlogaskr        TEXT @ m   2 3 A A � B B F T h e r e   w a s   a n   e r r o r   w i t h   t h e   s c r i p t .��   6  C D C l  8 8��������  ��  ��   D  E F E I  8 T�� G H
�� .sysodlogaskr        TEXT G m   8 ; I I � J J : A r e   y o u   i n   t h e   L o n d o n   o f f i c e ? H �� K L
�� 
disp K m   > ?����  L �� M N
�� 
btns M J   B J O O  P Q P m   B E R R � S S  Y e s Q  T�� T m   E H U U � V V  N o��   N �� W��
�� 
dflt W m   M N���� ��   F  X Y X r   U ^ Z [ Z n   U Z \ ] \ 1   V Z��
�� 
bhit ] l  U V ^���� ^ 1   U V��
�� 
rslt��  ��   [ o      ���� 
0 answer   Y  _ ` _ Z   _ � a b c�� a =  _ f d e d o   _ b���� 
0 answer   e m   b e f f � g g  Y e s b I  i p�� h��
�� .sysoexecTEXT���     TEXT h m   i l i i � j j * s c s e l e c t   L o n d o n O f f i c e��   c  k l k =  s z m n m o   s v���� 
0 answer   n m   v y o o � p p  N o l  q�� q k   } � r r  s t s I  } ��� u��
�� .sysoexecTEXT���     TEXT u m   } � v v � w w $ s c s e l e c t   A u t o m a t i c��   t  x y x l  � ��� z {��   z   connect to VPN    { � | |    c o n n e c t   t o   V P N y  }�� } O   � � ~  ~ k   � � � �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� 
��   �  ��� � O   � � � � � k   � � � �  � � � r   � � � � � 4   � ��� �
�� 
svce � m   � � � � � � �  V P N   ( L 2 T P ) � o      ���� 0 
vpnservice 
VPNService �  ��� � Z   � � � ����� � I  � ��� ���
�� .coredoexnull���     **** � o   � ����� 0 
vpnservice 
VPNService��   � I  � ��� ���
�� .netzconnnull���     **** � o   � ����� 0 
vpnservice 
VPNService��  ��  ��  ��   � n   � � � � � 1   � ���
�� 
locc � 1   � ���
�� 
netp��    m   � � � ��                                                                                  sevs  alis    �  Macintosh HD               ���H+   
�System Events.app                                               5����        ����  	                CoreServices    ��x�      ����     
� 
�  
��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��   `  ��� � l   � ��� � ���   �vp	
	if currentLocation is "Automatic" then
		display dialog "Do you want to change to London Office?" with icon 1 buttons {"Yes", "No"} default button 1
		(* Change to London Office if Yes *)
		set answer to button returned of the result
		if answer is "Yes" then
			do shell script "scselect LondonOffice"
		else if answer is "No" then
			-- connect to VPN
			tell application "System Events"
				delay 10
				tell current location of network preferences
					set VPNService to service "VPN (L2TP)"
					if exists VPNService then
						connect VPNService
					end if
				end tell
			end tell
		end if
	else
		display dialog "Do you want to change to Automatic?" with icon 1 buttons {"Yes", "No"} default button 1
		(* Change to Automatic if Yes *)
		set answer to button returned of the result
		if answer is "Yes" then
			do shell script "scselect Automatic"
			-- connect to VPN
			tell application "System Events"
				delay 10
				tell current location of network preferences
					set VPNService to service "VPN (L2TP)"
					if exists VPNService then
						connect VPNService
					end if
				end tell
			end tell
		end if
	end if
	
	    � � � �� 	 
 	 i f   c u r r e n t L o c a t i o n   i s   " A u t o m a t i c "   t h e n 
 	 	 d i s p l a y   d i a l o g   " D o   y o u   w a n t   t o   c h a n g e   t o   L o n d o n   O f f i c e ? "   w i t h   i c o n   1   b u t t o n s   { " Y e s " ,   " N o " }   d e f a u l t   b u t t o n   1 
 	 	 ( *   C h a n g e   t o   L o n d o n   O f f i c e   i f   Y e s   * ) 
 	 	 s e t   a n s w e r   t o   b u t t o n   r e t u r n e d   o f   t h e   r e s u l t 
 	 	 i f   a n s w e r   i s   " Y e s "   t h e n 
 	 	 	 d o   s h e l l   s c r i p t   " s c s e l e c t   L o n d o n O f f i c e " 
 	 	 e l s e   i f   a n s w e r   i s   " N o "   t h e n 
 	 	 	 - -   c o n n e c t   t o   V P N 
 	 	 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s " 
 	 	 	 	 d e l a y   1 0 
 	 	 	 	 t e l l   c u r r e n t   l o c a t i o n   o f   n e t w o r k   p r e f e r e n c e s 
 	 	 	 	 	 s e t   V P N S e r v i c e   t o   s e r v i c e   " V P N   ( L 2 T P ) " 
 	 	 	 	 	 i f   e x i s t s   V P N S e r v i c e   t h e n 
 	 	 	 	 	 	 c o n n e c t   V P N S e r v i c e 
 	 	 	 	 	 e n d   i f 
 	 	 	 	 e n d   t e l l 
 	 	 	 e n d   t e l l 
 	 	 e n d   i f 
 	 e l s e 
 	 	 d i s p l a y   d i a l o g   " D o   y o u   w a n t   t o   c h a n g e   t o   A u t o m a t i c ? "   w i t h   i c o n   1   b u t t o n s   { " Y e s " ,   " N o " }   d e f a u l t   b u t t o n   1 
 	 	 ( *   C h a n g e   t o   A u t o m a t i c   i f   Y e s   * ) 
 	 	 s e t   a n s w e r   t o   b u t t o n   r e t u r n e d   o f   t h e   r e s u l t 
 	 	 i f   a n s w e r   i s   " Y e s "   t h e n 
 	 	 	 d o   s h e l l   s c r i p t   " s c s e l e c t   A u t o m a t i c " 
 	 	 	 - -   c o n n e c t   t o   V P N 
 	 	 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s " 
 	 	 	 	 d e l a y   1 0 
 	 	 	 	 t e l l   c u r r e n t   l o c a t i o n   o f   n e t w o r k   p r e f e r e n c e s 
 	 	 	 	 	 s e t   V P N S e r v i c e   t o   s e r v i c e   " V P N   ( L 2 T P ) " 
 	 	 	 	 	 i f   e x i s t s   V P N S e r v i c e   t h e n 
 	 	 	 	 	 	 c o n n e c t   V P N S e r v i c e 
 	 	 	 	 	 e n d   i f 
 	 	 	 	 e n d   t e l l 
 	 	 	 e n d   t e l l 
 	 	 e n d   i f 
 	 e n d   i f 
 	 
 	��   . m     � ��                                                                                  MACS  alis    t  Macintosh HD               ���H+   
�
Finder.app                                                      �����        ����  	                CoreServices    ��x�      ���     
� 
�  
��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   +  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �  
	Mount the Drives
    � � � � & 
 	 M o u n t   t h e   D r i v e s 
 �  � � � l  � � ����� � I  � ��� ���
�� .aevtmvolnull���     TEXT � m   � � � � � � � Z s m b : / / f i l e s . b e t g e n i u s . l o c a l / h o m e $ / j a m e s . e v a n s��  ��  ��   �  � � � l  � � ����� � I  � ��� ���
�� .aevtmvolnull���     TEXT � m   � � � � � � � H s m b : / / f i l e s . b e t g e n i u s . l o c a l / g e n e r a l $��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �  
	Log use of the script
    � � � � 0 
 	 L o g   u s e   o f   t h e   s c r i p t 
 �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � I  � ��� ���
�� .sysoloadscpt        file � c   � � � � � m   � � � � � � � � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : L o g   S c r i p t   U s e . s c p t � m   � ���
�� 
alis��   � o      ����  0 mylogscriptuse myLogScriptUse��  ��   �  ��� � l  � � ����� � n   � � � � � I   � ��� ����� 0 logscriptuse   �  ��� � o   � ����� 0 
scriptname 
scriptName��  ��   � o   � �����  0 mylogscriptuse myLogScriptUse��  ��  ��       
�� � �  � � � �������   � ���������������
�� .aevtoappnull  �   � ****�� 0 
scriptname 
scriptName�� "0 currentlocation currentLocation�� 0 network_location  �� 
0 answer  ��  0 mylogscriptuse myLogScriptUse��  �   � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k     � � �   � �   � �  * � �  � � �  � � �  � � �  ��z�z  �}  �|   �   � - �y )�x�w�v�u�t�s � >�r�q�p�o A�n I�m�l R U�k�j�i�h f i o v�g�f�e ��d�c�b ��a � ��`�_�^�]�y 0 
scriptname 
scriptName
�x 
netp
�w 
locc
�v 
pnam
�u 
ctxt
�t 
rslt�s "0 currentlocation currentLocation
�r .sysoexecTEXT���     TEXT�q 0 network_location  �p  �o  
�n .sysodlogaskr        TEXT
�m 
disp
�l 
btns
�k 
dflt�j 
�i 
bhit�h 
0 answer  �g 

�f .sysodelanull��� ��� nmbr
�e 
svce�d 0 
vpnservice 
VPNService
�c .coredoexnull���     ****
�b .netzconnnull���     ****
�a .aevtmvolnull���     TEXT
�` 
alis
�_ .sysoloadscpt        file�^  0 mylogscriptuse myLogScriptUse�] 0 logscriptuse  �{ ��E�O� *�, *�,�,�&O�E�UUO� � �j E�W X  �j Oa a ka a a lva ka  O�a ,E` O_ a   a j Y P_ a   Ea j O� 5a j O*�,�, $*a  a !/E` "O_ "j # _ "j $Y hUUY hOPUOa %j &Oa 'j &Oa (a )&j *E` +O_ +�k+ , � � � �  L o n d o n O f f i c e � � � �  L o n d o n O f f i c e � � � �  Y e s � �\ �  ��\   � k       � �  � � � l      �[ � ��[   � | v
	Log use of the script
	Takes scriptType as input text, appends an entry to the log file with
	current date and time
    � � � � � 
 	 L o g   u s e   o f   t h e   s c r i p t 
 	 T a k e s   s c r i p t T y p e   a s   i n p u t   t e x t ,   a p p e n d s   a n   e n t r y   t o   t h e   l o g   f i l e   w i t h 
 	 c u r r e n t   d a t e   a n d   t i m e 
 �  � � � l     �Z�Y�X�Z  �Y  �X   �  ��W � i      � � � I      �V ��U�V 0 logscriptuse   �  ��T � o      �S�S 0 
scripttype 
scriptType�T  �U   � k     < � �  � � � r     	 � � � I    �R ��Q
�R .sysoloadscpt        file � c      � � � m      � � � � � � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : F o r m a t   D a t e . s c p t � m    �P
�P 
alis�Q   � o      �O�O 0 mydateformat myDateFormat �  � � � r   
  � � � n   
  � � � I    �N�M�L�N 0 date_format  �M  �L   � o   
 �K�K 0 mydateformat myDateFormat � o      �J�J 0 formatteddate formattedDate �  � � � l   �I�H�G�I  �H  �G   �  � � � r    %   b    # b    ! b     l   �F�E b    	
	 b     o    �D�D 0 formatteddate formattedDate m     �   
 n     1    �C
�C 
tstr l   �B�A I   �@�?�>
�@ .misccurdldt    ��� null�?  �>  �B  �A  �F  �E   m     �  , o     �=�= 0 
scripttype 
scriptType o   ! "�<
�< 
ret  o      �;�; 0 	this_data   �  r   & ) m   & ' � � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : S c r i p t L o g . t x t o      �:�: 0 	this_file    l  * *�9�8�7�9  �8  �7    r   * 3 I  * 1�6 �5
�6 .sysoloadscpt        file  c   * -!"! m   * +## �$$ � M a c i n t o s h   H D : U s e r s : J a m e s . E v a n s : D r o p b o x   ( P e r s o n a l ) : S c r i p t s : A p p e n d   T o   F i l e . s c p t" m   + ,�4
�4 
alis�5   o      �3�3  0 myappendtofile myAppendToFile %�2% n   4 <&'& I   5 <�1(�0�1 0 appendtofile  ( )*) o   5 6�/�/ 0 	this_data  * +,+ o   6 7�.�. 0 	this_file  , -�-- m   7 8�,
�, boovtrue�-  �0  ' o   4 5�+�+  0 myappendtofile myAppendToFile�2  �W   � �*./�*  . �)�) 0 logscriptuse  / �( ��'�&01�%�( 0 logscriptuse  �' �$2�$ 2  �#�# 0 
scripttype 
scriptType�&  0 �"�!� ����" 0 
scripttype 
scriptType�! 0 mydateformat myDateFormat�  0 formatteddate formattedDate� 0 	this_data  � 0 	this_file  �  0 myappendtofile myAppendToFile1  �������#�
� 
alis
� .sysoloadscpt        file� 0 date_format  
� .misccurdldt    ��� null
� 
tstr
� 
ret � 0 appendtofile  �% =��&j E�O�j+ E�O��%*j �,%�%�%�%E�O�E�O��&j E�O���em+ ��  ��   ascr  ��ޭ