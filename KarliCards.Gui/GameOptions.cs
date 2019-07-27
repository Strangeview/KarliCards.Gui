using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
    }
    [Serializable]
    public enum ComputerSkillLevel
    {
        Dumb,
        Good,
        Cheats
    }
}
