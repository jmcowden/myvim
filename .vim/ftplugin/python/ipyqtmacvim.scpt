FasdUAS 1.101.10   ��   ��    k             l      ��  ��    p j ipyqtmacvim.scpt - Companion Applescript to ipyqtmacvim.vim plugin
See documentation in ipyqtmacvim.vim.      � 	 	 �   i p y q t m a c v i m . s c p t   -   C o m p a n i o n   A p p l e s c r i p t   t o   i p y q t m a c v i m . v i m   p l u g i n 
 S e e   d o c u m e n t a t i o n   i n   i p y q t m a c v i m . v i m .     
  
 l     ��������  ��  ��        l      ��  ��    � � When the IPython Qt console is launched with non-inline plots, the statment <tell app 
"Python" to activate> activates the empty plot window, not the main iPython window. The 
statement below activates the IPython Qt console window consistently.      �  �   W h e n   t h e   I P y t h o n   Q t   c o n s o l e   i s   l a u n c h e d   w i t h   n o n - i n l i n e   p l o t s ,   t h e   s t a t m e n t   < t e l l   a p p   
 " P y t h o n "   t o   a c t i v a t e >   a c t i v a t e s   t h e   e m p t y   p l o t   w i n d o w ,   n o t   t h e   m a i n   i P y t h o n   w i n d o w .   T h e   
 s t a t e m e n t   b e l o w   a c t i v a t e s   t h e   I P y t h o n   Q t   c o n s o l e   w i n d o w   c o n s i s t e n t l y .        l     ��������  ��  ��     ��  l    N ����  O     N    k    M       r        6       2    ��
�� 
prcs  =       1   	 ��
�� 
pnam  m         � ! !  P y t h o n  o      ���� 0 theprocs     " # " X    - $�� % $ r   # ( & ' & m   # $��
�� boovtrue ' l      (���� ( n       ) * ) 1   % '��
�� 
pisf * o   $ %���� 0 proc  ��  ��  �� 0 proc   % o    ���� 0 theprocs   #  + , + l  . .��������  ��  ��   ,  - . - l   . .�� / 0��   /	 The delays are needed in case the computer lags and can't switch over to the Qt console
	fast enough - if nothing appears to happen when you run the plugin, or you see text
	pasted in unusual places (such as back in your Vim file), try increasing the delay.     0 � 1 1   T h e   d e l a y s   a r e   n e e d e d   i n   c a s e   t h e   c o m p u t e r   l a g s   a n d   c a n ' t   s w i t c h   o v e r   t o   t h e   Q t   c o n s o l e 
 	 f a s t   e n o u g h   -   i f   n o t h i n g   a p p e a r s   t o   h a p p e n   w h e n   y o u   r u n   t h e   p l u g i n ,   o r   y o u   s e e   t e x t 
 	 p a s t e d   i n   u n u s u a l   p l a c e s   ( s u c h   a s   b a c k   i n   y o u r   V i m   f i l e ) ,   t r y   i n c r e a s i n g   t h e   d e l a y .   .  2 3 2 l  . .��������  ��  ��   3  4 5 4 I  . 3�� 6��
�� .sysodelanull��� ��� nmbr 6 m   . / 7 7 ?�      ��   5  8 9 8 I  4 =�� : ;
�� .prcskprsnull���    utxt : m   4 5 < < � = =  v ; �� >��
�� 
faal > J   6 9 ? ?  @�� @ m   6 7��
�� eMdsKcmd��  ��   9  A B A I  > C�� C��
�� .sysodelanull��� ��� nmbr C m   > ? D D ?�      ��   B  E F E I  D K�� G��
�� .prcskcodnull���    long G m   D G���� $��   F  H�� H l  L L��������  ��  ��  ��    m      I I�                                                                                  sevs  alis    �  Macintosh HD               �˨H+  d�System Events.app                                              g��A`�        ����  	                CoreServices    ���      �A�9    d�d�d�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       �� J K L��   J ����
�� .aevtoappnull  �   � ****�� 0 theprocs   K �� M���� N O��
�� .aevtoappnull  �   � **** M k     N P P  ����  ��  ��   N ���� 0 proc   O  I�� Q��  ���������� 7�� <����������
�� 
prcs Q  
�� 
pnam�� 0 theprocs  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pisf
�� .sysodelanull��� ��� nmbr
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt�� $
�� .prcskcodnull���    long�� O� K*�-�[�,\Z�81E�O �[��l kh  e��,F[OY��O�j O���kvl O�j Oa j OPU L �� R��  R   S S  T T  I�� U
�� 
pcap U � V V  P y t h o nascr  ��ޭ