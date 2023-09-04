enum Page{ 
    case theme 
    case guide
    case board
    case game
}
// global obj
class MenuManager: ObservableObject{
    @Published var page : Page
    init(desti_page: Page){
        self.page = desti_page;
    }
}


@main
struct RandomApp: App {
    @ObservedObject var MenuManager = MenuManager(desti_page: .theme) // start page - theme 

    var body: some Scene {
        WindowGroup {
            switch(MenuManager.page)
            {
                case Page.theme:
                    MenuView().environmentObject(MenuManager)
                case Page.guide:
                    HowToPlayView().environmentObject(MenuManager)
                case Page.board:
                    LeaderboardView().environmentObject(MenuManager)
                case Page.game:
                    Intro_DifficultView().environmentObject(MenuManager)
            }
        }
    }
}