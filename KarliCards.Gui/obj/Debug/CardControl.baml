   M S B A M L   `   `   `  ����I  EKarliCards.Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:KarliCards.GuiKarliCards.Gui  5           KarliCards.Gui.CardControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:KarliCards.Gui     5      -   5        $��UserControl��5	   '   $	��154��6   $	��100��6     � 	Resources  5
      &    KarliCards.Gui.RankNameConverter   rankConverter  SuitTemplate �� 
TargetType  	SuitImage �� Triggers �� Binding �� ElementName �� Path �� Value �� Property �� Value��%�  &	        &	      &	 I       5   
   6"   �� 5   
   .R�5      �� ��6   �� 5      �� 5   
   " ��6    5      �� 5       6   �� $ UserControl��$
 Suit� Club6T   .a�5      ��  � ��$ Images\Clubs.png��6/   5      �� 5       6   �� $ UserControl��$
 Suit�	 Heart6T   .a�5      ��  � ��$ Images\Hearts.png��6/   5      �� 5       6   �� $ UserControl��$
 Suit� Diamond6T   .a�5      ��  � ��$ Images\Diamonds.png��6/   5      �� 5       6   �� $ UserControl��$
 Suit�	 Spade6T   .a�5      ��  � ��$ Images\Spades.png��6/   5      5      5      .��5       � .+�5!   
   �� 	 �� RadiusX$
	 12.5��6   
 �� RadiusY$

 12.5��6#   ��5"      �� 5#       �� EndPoint$ 0.47,-0.167&�6&    �� 
StartPoint$ 	0.86,0.92&�6=   .��5$      �  � Color$ 	#FFD1C78F��6#    � Offset$ 0Q�65   � 5%      $ 	#FFFFFFFF��6#   $ 1Q�65   5&       J� Effect 5(      3  -System.Windows.Media.Effects.DropShadowEffect  5)         	Direction$	 145Q�6#      
BlurRadius$ 10Q�63      ShadowDepth$ 0Q�6C   5+      F� 5,   
   ���	#FFFFFFFF �� Stretch$
 Fill=�6    $��0,0,35,0q�6A   ����� �     ��)�    Ӏ�@x}@f@����^�\��������7 D��M�@��� � @�����- @���� 2�     � �    @KL ��-  � 	��6/   Z�  J� OpacityMask 55      �� 56      $ 0.975,1.127&�6&   $ 0,-0.06&�6=   .��57      � $ 	#FF000000��6#   $ 0Q�65   � 58      $ 	#00FFFFFF��6#   $ 1Q�65   59      5;      �� 5<   
   -   5         ��Name$ 	SuitLabel��5<      #���  5=      $��Center=�5>      $��Center=�6-   $��	8,51,8,60q�5?      ��5<   #   �� $
 Suit�$ UserControl�� �� Mode$ Default=�5?      �� 5@   
   -   5        $ 	RankLabel��5@       K� ZIndex$ 1��6#   #���  5C      $
��Left=�5D      $	��Top=�6+   $��8,8,0,0q�5E      ��5A      �� $
 Rank�$ UserControl��$ Default=� �� 	Converter# [  5E      �� 5F   
   -   5        $ RankLabelInverted��5F      #���  5I      $��Right=�5J      $��Bottom=�6,   $��0,0,8,8q�5K       J� RenderTransformOrigin$ 0.5,0.5&�6!   ��5G      �� $
 Rank�$ UserControl��$ Default=�# [  z�5L      �� 5M       �� Angle$	 180Q�6"   5O      �� 5P   
   -   5        $��TopRightImage��5P      #��[ 6%   $��	12,12,8,0q�5Q      $��Right=�6#   $	��Top=�6?   $
��18.5��5R      $
��18.5��6   $��UniformToFill=�6+   �� 5S   
   -   5        $��BottomLeftImage��5S      #��[ 6'   $��	12,0,8,12q�5T      $
��Left=�6#   $��Bottom=�6>   $
��18.5��5U      $
��18.5��6   $��UniformToFill=�6+   $ 0.5,0.5&�5V      z�5W      �� 5X      $	 180Q�6"   5Z      5\      5]      