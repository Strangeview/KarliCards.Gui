using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace KarliCards.Gui
{
    /// <summary>
    /// CardControl.xaml 的交互逻辑
    /// </summary>
    /// 
    
    public partial class CardControl : UserControl
    {
        private CardPlayGames.Card card;
        // Using a DependencyProperty as the backing store for MyProperty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty SuitProperty =
            DependencyProperty.Register("Suit", typeof(CardPlayGames.Suit), typeof(CardControl), new PropertyMetadata(CardPlayGames.Suit.Club,
                new PropertyChangedCallback(OnSuitChanged)));


      
        // Using a DependencyProperty as the backing store for MyProperty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty RankProperty =
            DependencyProperty.Register("Rank", typeof(CardPlayGames.Rank), typeof(CardControl), new PropertyMetadata(CardPlayGames.Rank.Ace));
        public static DependencyProperty IsFaceUpProperty = DependencyProperty.Register("IsFaceUp", typeof(bool), typeof(CardControl), new PropertyMetadata
            (true, new PropertyChangedCallback(OnIsFaceUpChanged)));
        public bool IsFaceUp
        {
            get
            {
                return(bool)GetValue(IsFaceUpProperty); 
            }
            set
            {
                SetValue(IsFaceUpProperty, value);
            }
        }

        public CardPlayGames.Suit Suit
        {
            get
            {
                return (CardPlayGames.Suit)GetValue(SuitProperty);
            }
            set
            {
                SetValue(SuitProperty,value);
            }
        }
        public CardPlayGames.Rank Rank
        {
            get
            {
                return (CardPlayGames.Rank)GetValue(RankProperty);
            }
            set
            {
                SetValue(RankProperty,value);
            }
        }
       
        public CardPlayGames.Card Card
        {
            get { return card; }
            private set
            {
                card = value;
                Suit = card.suit;
                Rank = card.rank;
            }
        }
        public static void OnSuitChanged(DependencyObject source,DependencyPropertyChangedEventArgs args)
        {
            var control = source as CardControl;
            control.SetTextColor();
        }
        public static void OnIsFaceUpChanged(DependencyObject source,DependencyPropertyChangedEventArgs args)
        {
            var control = source as CardControl;
            control.RankLabel.Visibility = control.SuitLabel.Visibility = control.RankLabelInverted.Visibility = control.TopRightImage.Visibility =
                control.BottomLeftImage.Visibility = control.IsFaceUp ? Visibility.Visible : Visibility.Hidden;
        }
        public CardControl(CardPlayGames.Card card)
        {
            InitializeComponent();
            Card = card;
        }
        private void SetTextColor()
        {
            var color = (Suit == CardPlayGames.Suit.Club || Suit == CardPlayGames.Suit.Spade) ?
                new SolidColorBrush(Color.FromRgb(0, 0, 0)) : new SolidColorBrush(Color.FromRgb(255, 0, 0));
            RankLabel.Foreground = SuitLabel.Foreground = RankLabelInverted.Foreground = color;
        }
    }
}
