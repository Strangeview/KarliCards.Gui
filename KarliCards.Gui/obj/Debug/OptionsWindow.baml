   M S B A M L   `   `   `  ����I  EKarliCards.Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:KarliCards.GuiKarliCards.Gui  5   	   #    KarliCards.Gui.OptionsWindows   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:KarliCards.Gui     5   	     � Title$  Options��5   	   $	��345��6   $	��434��6&    � 
ResizeMode$ NoResize=�62   .��5	      �  � RowDefinitions 5
   
   �� 5      $��58 �6   �� 5      $��20 �6   �� 5      �� 5      $��42 �6   .+�5   
   �� $��0��6   ���#C40d42.+�5      �� $��56��6    �� Left$ 0��6    
 �� Top$ 0��60   $��UniformTofill=�6?   $��.\Images\Banner.png��6W   �� 5       �� Right$ 10��6   $ 13��6&   $��Options��66   ���	#FFF7EFEF$��Times New Romain)�5      $��24(�62   $
��Bold"�6@   5      �� 5   
   $��1��6   
���   � � 	Resources 5      $   KarliCards.Gui.NumberOfPlayers   numberOfPlayersData��%   &	          5      6(   5      .+�5      �� $��2��6   $ 10��6*   $ 2��6;   $	��408��6J   $	��208��6V   $��1��6c   .@�5      �� $
��Game��6   .��5      � ���	#FFE5E5E5.+�5      �� -   5        $��playAgainstComputerCheck��5   "   $��Play against computer��5   "   $
��Left=�6B   $��	11,33,0,0q�6]   $	��Top=�6p    d� 	IsChecked 5   B   ��  �� Path$ playAgainstComputer��� 5      $��Number of players��6    $
��Left=�6<   $��	10,54,0,0q�6W   $	��Top=�6j   �� 5      -   5        $��numberOfPlayersComboBox��5   u   $
��Left=�6#   $��
196,58,0,0q�6>   $	��Top=�6R   $��86��6j   ��5    #   �� 	 �� Source#	 [  
 �� SelectedValue
 5!   #   �� $ NumberOfPlayers�5#      5$      5%      �� 5&      $��Computer Player��6   $��Right=�63   $��-1.6,-2,-2.4,0.2q�6O   $	��112��6i   .��5'      � ���	#FFE5E5E5.+�5(      �� $��Skill Level��6    $
��Left=�66   $��	10,10,0,0q�6Q   $	��Top=�6d   	� 5)      -   5        $��dumbAIRadioButton��5*   $   $
��Dumb��5)   $   $
��Left=�63   $��	37,41,0,0q�6N   $	��Top=�6a   $
 TrueY�6y   5*   =   	� 5+      -   5        $��goodAIRadioButton��5+   y   $
��Good��6$   $
��Left=�63   $��	37,62,0,0q�6N   $	��Top=�6a   6�   	� 5,      -   5        $��cheatingAIRadioButton��5-   %   $��Cheats��5,   %   $
��Left=�66   $��	37,83,0,0q�6Q   $	��Top=�6d   5-   B   5.      5/      50      52      �� 53   
   $��3��6    �� Orientation$ 
Horizontal=�6"   $��RightToLeft=�6;   .+�54      �� -   5        $��cancleButton��54   P   $��_Cancle��6   $��22��6'   $��75��63   $��10,0,0,0q�6>   6d   �� 55      -   5        $��okButton��55   L   $	��_OK��6   $��22��6#   $��75��6/   $��10,0,0,0q�6:   6\   56      59      5:      