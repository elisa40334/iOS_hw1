//
//  ContentView.swift
//  test
//
//  Created by Elisa Chien on 2023/3/15.
//

import SwiftUI


struct rou: View {
    
    @State private var degrees: Double = 0
    
//    @State var num = 0
    @State var chec = 0
    @State var num2 = 0
    @Binding var num:Int
    @Binding var sp :Bool
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            VStack {
                
                Image("roulette")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .clipShape(Circle())
                    .rotationEffect(.degrees(degrees))
                    .animation(Animation.linear(duration: 1))
                    .overlay(){
                        Circle()
                            .frame(width: 80,height: 80)
                            .foregroundColor(Color.black)
                            .overlay(){
                                Text(String(num2))
                                    .foregroundColor(Color.white)
                            }
                    }
                    
                Ellipse()
                .frame(width: 10, height: 40)
                .padding(EdgeInsets(top: -15, leading: 0, bottom: 0, trailing: 0))
                .foregroundColor(Color.white)
                
                
                if chec == 0{
                    
                    Image("spin")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(EdgeInsets(top: -100, leading: 500, bottom: 0, trailing: 0))
                        .onTapGesture {
                            num2 = num
                            chec = 1
                            if num == 1{
                                self.degrees = 9.4736*20+360
                            }
                            else if num == 2{
                                self.degrees = 9.4736+360
                            }
                            else if num == 3{
                                self.degrees = 9.4736*24+360
                            }
                            else if num == 4{
                                self.degrees = 9.4736*5+360
                            }
                            else if num == 5{
                                self.degrees = 9.4736*28+360
                            }
                            else if num == 6{
                                self.degrees = 9.4736*9+360
                            }
                            else if num == 7{
                                self.degrees = 9.4736*32+360
                            }
                            else if num == 8{
                                self.degrees = 9.4736*13+360
                            }
                            else if num == 9{
                                self.degrees = 9.4736*36
                            }
                            else if num == 10{
                                self.degrees = 9.4736*17+360
                            }
                            else if num == 11{
                                self.degrees = 9.4736*33+360
                            }
                            else if num == 12{
                                self.degrees = 9.4736*14+360
                            }
                            else if num == 13{
                                self.degrees = 9.4736*21+360
                            }
                            else if num == 14{
                                self.degrees = 9.4736*2+360
                            }
                            else if num == 15{
                                self.degrees = 9.4736*25+360
                            }
                            else if num == 16{
                                self.degrees = 9.4736*6+360
                            }
                            else if num == 17{
                                self.degrees = 9.4736*29+360
                            }
                            else if num == 18{
                                self.degrees = 9.4736*10+360
                            }
                            else if num == 19{
                                self.degrees = 9.4736*12+360
                            }
                            else if num == 20{
                                self.degrees = 9.4736*31+360
                            }
                            else if num == 21{
                                self.degrees = 9.4736*8+360
                            }
                            else if num == 22{
                                self.degrees = 9.4736*27+360
                            }
                            else if num == 23{
                                self.degrees = 9.4736*4+360
                            }
                            else if num == 24{
                                self.degrees = 9.4736*23+360
                            }
                            else if num == 25{
                                self.degrees = 9.4736*16+360
                            }
                            else if num == 26{
                                self.degrees = 9.4736*35+360
                            }
                            else if num == 27{
                                self.degrees = 9.4736*18+360
                            }
                            else if num == 28{
                                self.degrees = 9.4736*37
                            }
                            else if num == 29{
                                self.degrees = 9.4736*15+360
                            }
                            else if num == 30{
                                self.degrees = 9.4736*34+360
                            }
                            else if num == 31{
                                self.degrees = 9.4736*11+360
                            }
                            else if num == 32{
                                self.degrees = 9.4736*30+360
                            }
                            else if num == 33{
                                self.degrees = 9.4736*7+360
                            }
                            else if num == 34{
                                self.degrees = 9.4736*26+360
                            }
                            else if num == 35{
                                self.degrees = 9.4736*3+360
                            }
                            else if num == 36{
                                self.degrees = 9.4736*22+360
                            }
                            else if num == 37{
                                self.degrees = 360
                            }
                            else if num == 38{
                                self.degrees = 9.4736*19+360
                            }
                        }
                }
                
                else{
                    Image("return")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(EdgeInsets(top: -100, leading: 500, bottom: 0, trailing: 0))
                        .onTapGesture {
                            sp = false
                        }
                }
                
            }
        }
        
    }
}

struct rou_Previews: PreviewProvider {
    static var previews: some View {
        rou(num: .constant(1),sp: .constant(true))
    }
}
