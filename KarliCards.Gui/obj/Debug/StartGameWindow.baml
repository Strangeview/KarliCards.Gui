   M S B A M L   `   `   `  ����I  EKarliCards.Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:KarliCards.GuiKarliCards.Gui  5   	   $    KarliCards.Gui.StartGameWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:KarliCards.Gui     5   	     � Title$  StartNewGame��5   	   $	��345��6   $	��445��6+    � 
ResizeMode$ NoResize=�67   .��5	      �  � RowDefinitions 5
   
   �� 5      $��58 �6   �� 5      $��20 �6   �� 5      �� 5      $��42 �6   .+�5   
   �� $��0��6   ���#C40d42.+�5      �� $��56��6    �� Left$ 0��6    
 �� Top$ 0��60   $��UniformTofill=�6?   $��.\Images\Banner.png��6W   �� 5       �� Right$ 10��6   $ 13��6&   $��New Game��66   ���	#FFF7EFEF$��Times New Romain)�5      $��24(�62   $
��Bold"�6@   5      �� 5   
   -   5        $��playerNameListBox��5   ~   $��2��6   $
��Left=�6   $��	10,31,0,0q�6:   $	��Top=�6M   $	��155��6e   $	��227��6r    �� SelectionMode$ Extended=�5   ;   ��6   ��  �� Path$ PlayerNames�6T   �� 5   
   $��2��6   $
��Left=�6   $��10,5,0,0q�68   $	��Top=�6J   $��Players��6b   �� 5   
   $��2��6   $
��Left=�6   $��	252,5,0,0q�68   $	��Top=�6K   $��30��6c   $��90��6o   $��
New Player��6z   �� 5   
   -   5        $��newPlayerTextBox��5   �   $��2��6   $
��Left=�6   $��
252,31,0,0q�6:   $	��Top=�6N   $��23��6f   $	��166��6r    �� TextWrapping$
 Wrap=�6~   6�   �� 5   
   -   5        $��addNewPlayerButton��5   q   $��2��6   $
��Left=�6   $��
354,59,0,0q�69   $	��Top=�6M   $��64��6f   $	��Add��6�   6�   �� 5   
   $��3��6   	 �� Orientation$	 
Horizontal=�6"   $��RightToLeft=�6;   .+�5      �� -   5        $��cancleButton��5   P   $��_Cancle��6   $��22��6'   $��75��63   $��10,0,0,0q�6>   6d   �� 5      -   5        $��okButton��5   L   $	��_OK��6   $��22��6#   $��75��6/   $��10,0,0,0q�6:   {�.  6n   5      5!      5"      