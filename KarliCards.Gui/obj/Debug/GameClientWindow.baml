   M S B A M L   `   `   `  ����I  EKarliCards.Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:KarliCards.GuiKarliCards.Gui  5   	   %    KarliCards.Gui.GameClientWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:KarliCards.Gui     5   	     � Title$  Karli Cards Game Client��5   	    � WindowState$ 	Maximized=�6)    � DataContext 5	      "   KarliCards.Gui.GameViewModel  5
   
    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ ControlResources.xaml?�6%   %    5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ ApplicationCommands.Close��5      6\     5   
   -   5        $ ApplicationCommands.Save��5      6[     5   
   -   5        $* $local:GameViewModel.StartGameCommand��5      6g     5   
   -   5        $* $local:GameViewModel.ShowAboutCommand��5      6g     5   
   -   5        $&  local:GameOptions.OptionsCommand��5      6c   .��5      � 
��� � � � RowDefinitions 5   
   �� 5      $��58 �6   �� 5      $��20 �6   �� 5      �� 5      $��42 �6   .+�5!   
   �� $��0��6      HeaderLabelStyle#��[  6   .��6G   Karli Cards6T   ]� 5"   
   $��2��6   .+�5#      '   !KarliCards.Gui.CardsInHandControl  -   5        	  Name$	 Player2Hand��5#   '   $��Right=�6<   $	��380��6S   $��Center=�5$   '   $	��180��6B   
   PlayerOrientation$
 Vertical=�6N      Owner 5%   '   �� *
Players[1]+   PlayerState 6D   �� *Players[1].State+   Game 6m   ��   5&      -   5        $	 Player4Hand��5&   '   $
��Left=�6<   $
��Left=�5'   '   $	��380��6B   $��Center=�6O   $
 Vertical=�5(   '   $	��180��6a    5&   R   ��  5(   D   �� *
Players[3]+ 5)   '   �� *Players[3].State+  5*      -   5        $	 Player1Hand��5*   '   $	��Top=�6<   $��Center=�6Q   $	��154��6n   $	��Top=�6{   $
 
Horizontal=�5+   '   $	��380��6c    6F   �� *
Players[0]+ 6o   �� *Players[0].State+ 5,   '   ��   5-      -	   5        $	 Player3Hand��5-   '   $��Bottom=�6<   $��Center=�6T   $	��154��6q   $	��Top=�6~   $
 
Horizontal=�5.   '   $	��380��6c    6F   �� *
Players[2]+ 6o   �� *Players[2].State+ 5/   '   �� %   KarliCards.Gui.GameDecksControl  50      -
   5          Name$ 	GameDecks��50   2   $	��180��6%      Deck 6E   �� *
GameDeck+   AvailableCard 6_   �� *CurrentAvailableCard+   CurrentPlayer 51   %   �� *CurrentPlayer+   GameStarted 6M   �� *GameStarted+53      o� 54   
   $��1��6   $��0q�6     MainMenuStyle#��[ 6'   .@�55      m� $��_File��6     MainMenuItemStyle#��[ 6&   .@�56      m� $��	_New Game��6     MainMenuSubMenuItemStyle#��[ 6.    m� Command$* $local:GameViewModel.StartGameCommand��6`   m� 57      $��_Open��6   #��[ 6*   m� 58      $��_Save��6   #��[ 6*   $
 Save��6\    m� Icon 59      �� 5:      $#��Images\base_floppydisk_32.png��6    $��20��6G   5<      �� 5=        MenuItemSeparatorStyle#��[ 6   m� 5>      $��_Close��6   #��[ 6+   $ Close��6]   5@      m� 5A      $��_Game��6   #��[ 6&   .@�5B      m� $��_Undo��6   #��[ 6*   5C      m� 5D      $��_Tools��6   #��[ 6'   .@�5E      m� $��_Options��6   #��[ 6-   $&  local:GameOptions.OptionsCommand��6_   5F      m� 5G      $
��Help��6   #��[ 6%   .@�5H      m� $��_About��6   #��[ 6+   $* $local:GameViewModel.ShowAboutCommand��6]   5I      5K      5L      5N      