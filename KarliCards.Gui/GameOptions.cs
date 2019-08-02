using CardPlayGames;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Xml.Serialization;

namespace KarliCards.Gui
{    
    [Serializable]
   public class GameOptions
    {
        private ObservableCollection<string> playerNames = new ObservableCollection<string>();
        private bool playAgainstComputer = true;
        private int numberOfPlayers = 2;
        private ComputerSkillLevel computerSkill = ComputerSkillLevel.Dumb;
        public List<string> SelectedPlayers { get; set; } = new List<string>();
        public static System.Windows.Input.RoutedCommand OptionsCommand = new RoutedCommand("Show Options", typeof(GameOptions), new InputGestureCollection(new List<InputGesture> { new KeyGesture(
            Key.O,ModifierKeys.Control)}));
        public ObservableCollection<string> PlayerNames
        {
            get
            {
                return playerNames;
            }
            set
            {
                playerNames = value;
                OnPropertyChanged("PlayerNames");
            }
        }
        public bool PlayAgainstComputer
        {
            get
            {
                return playAgainstComputer;
            }
            set
            {
                playAgainstComputer = value;
                OnPropertyChanged(nameof(PlayAgainstComputer));
            }
        }
        public int NumberOfPlayers
        {
            get
            {
                return numberOfPlayers;
            }
            set
            {
                numberOfPlayers = value;
                OnPropertyChanged(nameof(NumberOfPlayers));
            }
        }
        public int MinutesBeforeLoss { get; set; }
        public ComputerSkillLevel ComputerSkill
        {
            get
            {
                return computerSkill;
            }
            set
            {
                computerSkill = value;
                OnPropertyChanged(nameof(ComputerSkill));
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this,new PropertyChangedEventArgs(propertyName));
        }
        public void AddPlayer(string playerName)
        {
            if (playerNames.Contains(playerName))
            {
                return;
            }
            else
            {
                playerNames.Add(playerName);
                OnPropertyChanged("playerNames");
            }
        }
        public void Save()
        {
            using (var stream = File.Open("GameOptions.xml", FileMode.Create))
            {
                var serializer = new XmlSerializer(typeof(GameOptions));
                serializer.Serialize(stream, this);
            }
        }
        public static GameOptions Create()
        {
            if (File.Exists("GameOptions.xml"))
            {
                using (var stream = File.OpenRead("GameOptions.xml"))
                {
                    var serializer = new XmlSerializer(typeof(GameOptions));
                    return serializer.Deserialize(stream) as GameOptions;
                }
            }
            else
            {
                return new GameOptions();
            }
        }
    }
   
}
