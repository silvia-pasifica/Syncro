//
//  ContentView.swift
//  MiniChallenge1
//
//  Created by Jeremy Raymond on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    @State static var inputImage: UIImage?
    @State var selectedButton = 1

    var currentPage = 1
    var body: some View {
        ZStack{
            switch self.selectedButton {
            case 1:
               
                HomeView()
            case 2:
                JournalListView()
            case 3:
                AddView()
            default:
                Text("test")
            }
            if selectedButton != 3 {
                VStack{
                    Spacer()
                    ZStack {
                        BottomBar(selectedButton: self.$selectedButton).background(CurveShape(selectedButton: self.$selectedButton))
                            .padding(.leading, -5)
                      
                        Button(action: {
                            selectedButton = 3
                        }){
                            VStack{
                                Image(systemName: "plus")
                                    .font(.system(size: 35))
                            }
                            .padding()
                        }
                        .foregroundColor(selectedButton == 3 ? Color("primaryColor"): Color(.gray))
                        .background(selectedButton == 3 ? Color("secondaryColor") : Color(.white))
                        .shadow(color:Color(.black) , radius: 20, x:0, y:2)
                        .clipShape(Circle())
                        .offset(y: -15)


                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
