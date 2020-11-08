//
//  SwiftUI_ExampleApp.swift
//  SwiftUI Example
//
//  Created by ousama boujaouane on 07/11/2020.
//

import SwiftUI // Pour l'utilisation du framework SwiftUI ne pas oublier l'import

@main // endroit où l’application commence son exécution (point d’entrée)
//Implémentation de la propriété calculée du corps requis pour définir le contenu de l'application
struct SwiftUI_ExampleApp: App {
    
    // propriété énumératrice qui contient l'état actuel de la scène
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup { // Un WindowGroup reprèsente une scène qui présente un groupe de fenêtres structurées de manière identique.
            ContentView()
                .preferredColorScheme(.dark)
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active :
                print("La scène est au premier plan et interactive")
            case .background :
                print("La scène n'est actuellement pas visible dans l'interface utilisateur")
            case .inactive :
                print("La scène est au premier plan mais devrait interrompre son travail")
            @unknown default:
                print("Le Switch actuel couvre les cas connus à l'instant T, mais 'ScenePhase' peut avoir des valeurs inconnues supplémentaires, éventuellement ajoutées dans les versions futures de SwiftUI")
            }
        }
    }
    
}

struct SwiftUI_ExampleApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Group {
            Text("Hello, World!")
        }/*@END_MENU_TOKEN@*/
    }
}
