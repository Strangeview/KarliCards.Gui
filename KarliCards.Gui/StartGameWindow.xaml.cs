﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Xml.Serialization;

namespace KarliCards.Gui
{
    /// <summary>
    /// StartGameWindow.xaml 的交互逻辑
    /// </summary>
    public partial class StartGameWindow : Window
    {
        private GameOptions gameOptions;
        public StartGameWindow()
        {
           /* if (gameOptions == null)
            {
                if (File.Exists("GameOptions.xml"))
                {
                    using (var stream = File.OpenRead("GameOptions.xml"))
                    {
                        var serializer = new XmlSerializer(typeof(GameOptions));
                        gameOptions = serializer.Deserialize(stream) as GameOptions;
                    }
                }
                else
                {
                    gameOptions = new GameOptions();
                }
            }
            DataContext = gameOptions;*/

            InitializeComponent();
            // ChangeListBoxOptons();
            DataContextChanged += StartGame_DataContextChanged;

        }

        private void ChangeListBoxOptons()
        {
            if (gameOptions.PlayAgainstComputer)
            {
                playerNameListBox.SelectionMode = SelectionMode.Single;
            }
            else
            {
                playerNameListBox.SelectionMode = SelectionMode.Extended;
            }
        }

        private void PlayerNameListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (gameOptions.PlayAgainstComputer)
            {
                okButton.IsEnabled = (playerNameListBox.SelectedItems.Count == 1);
            }
            else
            {
                okButton.IsEnabled = (playerNameListBox.SelectedItems.Count == gameOptions.NumberOfPlayers);
            }
        }

        private void AddNewPlayerButton_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(newPlayerTextBox.Text))
            {
                gameOptions.AddPlayer(newPlayerTextBox.Text);
            }
            newPlayerTextBox.Text = string.Empty;
        }

        private void OkButton_Click(object sender, RoutedEventArgs e)
        {
            /*foreach(string item in playerNameListBox.SelectedItems)
            {
                gameOptions.SelectedPlayers.Add(item);
            }
            using (var stream = File.Open("GameOptions.xml", FileMode.Create))
            {
                var serializer = new XmlSerializer(typeof(GameOptions));
                serializer.Serialize(stream, gameOptions);
            }*/
            var gameOptions = DataContext as GameOptions;
            gameOptions.SelectedPlayers = new List<string>();
            foreach(string item in playerNameListBox.SelectedItems)
            {
                gameOptions.SelectedPlayers.Add(item);
            }
            this.DialogResult = true;
            this. Close();
        }

        private void CancleButton_Click(object sender, RoutedEventArgs e)
        {
            gameOptions = null;
            Close();
        }
        public void StartGame_DataContextChanged(object sender,DependencyPropertyChangedEventArgs e)
        {
            gameOptions = DataContext as GameOptions;
            ChangeListBoxOptons();

        }
    }
}
