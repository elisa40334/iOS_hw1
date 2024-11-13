//
//  ContentView.swift
//  aa
//
//  Created by User05 on 2023/3/1.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var num = 0
    @State var chip = 0
    @State var occu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    @State var reoccu = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    @State var now = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    @State var renow = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    @State var bettotal = 0
    @State var rebet = 0
    @State var money = 300000
    @State var remoney = 300000
    @State var arr = [0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,0,1,0,1,0,2,2]
    @State private var sp = false
    let player = AVPlayer()
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
//            Image("bg")
//                .resizable()
//                .rotationEffect(.degrees(90))
//               .scaledToFill()
//               .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
//               .ignoresSafeArea()
            
            ZStack{
                Image("bb")
                    .resizable()
                    .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: 60)
                    .padding(EdgeInsets(top: -200, leading: 0, bottom: 0, trailing: 0))
                    .ignoresSafeArea()
                HStack{
                    
                    ZStack{
                        if remoney == 0{
                            Text("Game Over")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                .foregroundColor(Color.white)
                        }
                        else{
                            Image("coin")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(EdgeInsets(top: 0, leading: -100, bottom: 0, trailing: 0))
                            Text(":  \(money)")
                                .padding(EdgeInsets(top: 0, leading: -40, bottom: 0, trailing: 0))
                                .foregroundColor(Color.white)
                        }
                    }.frame(width: 150,height: 40)
                    
                    HStack{
                        Text("CHIP ：")
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .foregroundColor(Color.white)
                            .frame(width: 70,height: 60)
                        HStack{
                            if chip == 1000{
                                Text("1K")
                                    .frame(width: 40, height: 40)
                                    .background(Color.yellow)
                                    .border(Color.white, width: 0.5)
                                    .cornerRadius(45.0)
                                    .foregroundColor(Color.white)
                            }
                            else if chip == 5000{
                                Text("5K")
                                    .frame(width: 40, height: 40)
                                    .background(Color.purple)
                                    .border(Color.white, width: 0.5)
                                    .cornerRadius(45.0)
                                    .foregroundColor(Color.white)
                            }
                            else if chip == 100000{
                                Text("100K")
                                    .frame(width: 40, height: 40)
                                    .background(Color.blue)
                                    .border(Color.white, width: 0.5)
                                    .cornerRadius(45.0)
                                    .foregroundColor(Color.white)
                            }
                            else if chip == 50000{
                                Text("50K")
                                    .frame(width: 40, height: 40)
                                    .background(Color.gray)
                                    .border(Color.white, width: 0.5)
                                    .cornerRadius(45.0)
                                    .foregroundColor(Color.white)
                            }
                            else if chip == 10000{
                                Text("10K")
                                    .frame(width: 40, height: 40)
                                    .background(Color.orange)
                                    .border(Color.white, width: 0.5)
                                    .cornerRadius(45.0)
                                    .foregroundColor(Color.white)
                            }
                        }.frame(width: 90,height: 90)
                    }
                    Text("TOTAL BET ： \(bettotal)")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .frame(width: 225,height: 130)
                        .foregroundColor(Color.white)
                }.padding(EdgeInsets(top: -230, leading: 0, bottom: 0, trailing: 0))
            }
            VStack{
                        HStack(alignment: .center, spacing: 0, content: {
                            table3(occu: $occu,chip: $chip,now: $now,bettotal:$bettotal,money:$money)
                            table2(occu: $occu,chip: $chip,now: $now,bettotal:$bettotal,money:$money)
                            VStack(alignment: .center, spacing: 0, content: {
                                HStack(alignment: .center, spacing: 0, content: {
                                    ZStack{
                                        Text("0")
                                            .frame(width: 75, height: 50)
                                            .background(Color.green)
                                            .foregroundColor(.white)
                                            .border(Color.white, width: 0.5)
                                            .onTapGesture {
                                                occu[36] = chip
                                                now[36] += chip
                                                bettotal += chip
                                                if money > chip{
                                                    money -= chip
                                                }
                                                else if money == chip{
                                                    money -= chip
                                                    chip = 0
                                                }
                                                else{
                                                    bettotal -= chip
                                                    now[36] -= chip
                                                    chip = 0
                                                    occu[36] = 0
                                                }
                                            }
                                            if occu[36]  == 1000{
                                                Text("1K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.yellow)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[36]  == 5000{
                                                Text("5K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.purple)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[36]  == 100000{
                                                Text("100K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.blue)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[36]  == 50000{
                                                Text("50K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.gray)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                                    .onTapGesture {
                                                        chip = 50000
                                                    }
                                            }
                                            else if occu[36]  == 10000{
                                                Text("10K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.orange)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                    }
                                        
                                    ZStack{
                                        Text("00")
                                            .frame(width: 75, height: 50)
                                            .background(Color.green)
                                            .foregroundColor(.white)
                                            .border(Color.white, width: 0.5)
                                            .onTapGesture {
                                                occu[37] = chip
                                                now[37] += chip
                                                bettotal += chip
                                                if money > chip{
                                                    money -= chip
                                                }
                                                else if money == chip{
                                                    money -= chip
                                                    chip = 0
                                                }
                                                else{
                                                    bettotal -= chip
                                                    now[37] -= chip
                                                    chip = 0
                                                    occu[37] = 0
                                                }
                                            }
                                            if occu[37]  == 1000{
                                                Text("1K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.yellow)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[37]  == 5000{
                                                Text("5K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.purple)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[37]  == 100000{
                                                Text("100K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.blue)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[37]  == 50000{
                                                Text("50K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.gray)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                            else if occu[37]  == 10000{
                                                Text("10K")
                                                    .frame(width: 40, height: 40)
                                                    .rotationEffect(.degrees(90))
                                                    .background(Color.orange)
                                                    .border(Color.white, width: 0.5)
                                                    .cornerRadius(45.0)
                                                    .foregroundColor(Color.white)
                                            }
                                    }
                                })
                                table1(chip: $chip,occu: $occu,now: $now,bettotal: $bettotal,money:$money)
                                HStack(alignment: .center, spacing: 0, content: {
                                    ForEach(0..<3){i in
                                        ZStack{
                                            Text("2to1")
                                                .frame(width: 50, height: 50)
                                                .background(Color.green)
                                                .foregroundColor(.white)
                                                .border(Color.white, width: 0.5)
                                                .onTapGesture {
                                                    occu[47+i] = chip
                                                    now[47+i] += chip
                                                    bettotal += chip
                                                    if money > chip{
                                                        money -= chip
                                                    }
                                                    else if money == chip{
                                                        money -= chip
                                                        chip = 0
                                                    }
                                                    else{
                                                        bettotal -= chip
                                                        now[47+i] -= chip
                                                        chip = 0
                                                        occu[47+i] = 0
                                                    }
                                                    
                                                }
                                                if occu[47+i]  == 1000{
                                                    Text("1K")
                                                        .frame(width: 40, height: 40)
                                                        .rotationEffect(.degrees(90))
                                                        .background(Color.yellow)
                                                        .border(Color.white, width: 0.5)
                                                        .cornerRadius(45.0)
                                                        .foregroundColor(Color.white)
                                                }
                                                else if occu[47+i]  == 5000{
                                                    Text("5K")
                                                        .frame(width: 40, height: 40)
                                                        .rotationEffect(.degrees(90))
                                                        .background(Color.purple)
                                                        .border(Color.white, width: 0.5)
                                                        .cornerRadius(45.0)
                                                        .foregroundColor(Color.white)
                                                }
                                                else if occu[47+i]  == 100000{
                                                    Text("100K")
                                                        .frame(width: 40, height: 40)
                                                        .rotationEffect(.degrees(90))
                                                        .background(Color.blue)
                                                        .border(Color.white, width: 0.5)
                                                        .cornerRadius(45.0)
                                                        .foregroundColor(Color.white)
                                                }
                                                else if occu[47+i]  == 50000{
                                                    Text("50K")
                                                        .frame(width: 40, height: 40)
                                                        .rotationEffect(.degrees(90))
                                                        .background(Color.gray)
                                                        .border(Color.white, width: 0.5)
                                                        .cornerRadius(45.0)
                                                        .foregroundColor(Color.white)
                                                }
                                                else if occu[47+i]  == 10000{
                                                    Text("10K")
                                                        .frame(width: 40, height: 40)
                                                        .rotationEffect(.degrees(90))
                                                        .background(Color.orange)
                                                        .border(Color.white, width: 0.5)
                                                        .cornerRadius(45.0)
                                                        .foregroundColor(Color.white)
                                                }
                                        }
                                    }
                                })
                                
                                
                            })
                        }).rotationEffect(.degrees(-90))
                            .frame(width: 780, height: 300)
                            .padding(EdgeInsets(top: 75, leading: 0, bottom: 0, trailing: 0))
                        
                ZStack {
                    Image("bar")
                        .resizable()
                        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: 85)
                        .ignoresSafeArea()
                    HStack{
                                
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                            .onTapGesture {
                                chip = 1000
                            }
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .onTapGesture {
                                chip = 5000
                            }
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .foregroundColor(Color.white)
                            .onTapGesture {
                                chip = 10000
                            }
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .onTapGesture {
                                chip = 50000
                            }
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            .onTapGesture {
                                chip = 100000
                            }
                        if num == 37{
                            Text("0")
                                .frame(width: 40, height: 40)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 0))
                        }
                        else if num == 38{
                            Text("00")
                                .frame(width: 40, height: 40)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 0))
                        }
                        else{
                            Text("\(num)")
                                .frame(width: 40, height: 40)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 0))
                        }
                        HStack{
                            Button {
                                if money - rebet >= 0{
                                    for aa in 0...50{
                                        occu[aa] = reoccu[aa]
                                        now[aa] = renow[aa]
                                    }
                                    bettotal = rebet
                                    money -= rebet
                                }
                            } label: {
                                Image("reb")
                                    .resizable()
                                    .frame(width: 104,height: 60)
                            }
                            
                            Button {
                                for aa in 0...50{
                                    occu[aa] = 0
                                    now[aa] = 0
                                    bettotal = 0
                                }
                                money = remoney
                            } label: {
                                Image("cle")
                                    .resizable()
                                    .frame(width: 104,height: 60)
                            }
                            
                            Button {
                                for aa in 0...50{
                                    occu[aa] = 0
                                    now[aa] = 0
                                    bettotal = 0
                                }
                                money = 300000
                                remoney = 300000
                            } label: {
                                Image("res")
                                    .resizable()
                                    .frame(width: 126,height: 60)
                            }
                            
                            Button {
                                
                                num = .random(in: 1...38)
                                money += (now[num-1]*36)
                                now[num-1] *= 35
                                if num >= 0 && num <= 11{
                                    money += (now[38]*3)
                                }
                                else if num >= 12 && num <= 23{
                                    money += (now[39]*3)
                                }
                                else if num >= 24 && num <= 35{
                                    money += (now[40]*3)
                                }

                                if num >= 0 && num <= 17{
                                    money += (now[41]*2)
                                }
                                else if num >= 18 && num <= 35{
                                    money += (now[46]*2)
                                }
                                if (num+1)%2 == 0{
                                    money += (now[42]*2)
                                }
                                else if (num+1)%2 == 1{
                                    money += (now[45]*2)
                                }
                                if arr[num] == 0{
                                    money += (now[43]*2)
                                }
                                else if arr[num] == 1{
                                    money += (now[44]*2)
                                }
                                if (num-1)%3 == 0{
                                    money += (now[47]*3)
                                }
                                else if (num-2)%3 == 0{
                                    money += (now[48]*3)
                                }
                                else if (num)%3 == 0{
                                    money += (now[49]*3)
                                }
                                for ii in 0...50{
                                    renow[ii] = now[ii]
                                    now[ii] = 0
                                    reoccu[ii] = occu[ii]
                                    occu[ii] = 0
                                }
                                rebet = bettotal
                                bettotal = 0
                                remoney = money
                                sp.toggle()
                                
                            } label: {
                                Image("spin")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                            }
                        }.padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0))
                            .fullScreenCover(isPresented: $sp, content: {rou(num: $num,sp:$sp)})
                    }
                }.padding(EdgeInsets(top: -35, leading: 0, bottom: 0, trailing: 0))
                        
            }
        }
       
//        .onAppear {
//            let url = Bundle.main.url(forResource: "配樂", withExtension: "mp3")!
//            let playerItem = AVPlayerItem(url: url)
//            player.replaceCurrentItem(with: playerItem)
//            player.play()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct table1: View {
    @Binding var chip: Int
    @Binding var occu: [Int]
    @Binding var now: [Int]
    @Binding var bettotal: Int
    @Binding var money: Int
    var body: some View {
        var arr = [0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,0,1,0,1,0]
        ForEach(0..<12){i in
            HStack(alignment: .center, spacing: 0, content: {
                
                ForEach(1..<4){index in
                    var x = i*3+index
                    ZStack{
                        if arr[x-1] == 0{
                            Text(String(x))
                                .frame(width: 50, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .border(Color.white, width: 0.5)
                                .onTapGesture {
                                    occu[x-1] = chip
                                    now[x-1] += chip
                                    bettotal += chip
                                    if money > chip{
                                        money -= chip
                                    }
                                    else if money == chip{
                                        money -= chip
                                        chip = 0
                                    }
                                    else{
                                        bettotal -= chip
                                        now[x-1] -= chip
                                        chip = 0
                                        occu[x-1] = 0
                                    }
                                }
                        }
                        else{
                            Text(String(x))
                                .frame(width: 50, height: 50)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .border(Color.white, width: 0.5)
                                .onTapGesture {
                                    occu[x-1] = chip
                                    now[x-1] += chip
                                    bettotal += chip
                                    if money > chip{
                                        money -= chip
                                    }
                                    else if money == chip{
                                        money -= chip
                                        chip = 0
                                    }
                                    else{
                                        bettotal -= chip
                                        now[x-1] -= chip
                                        chip = 0
                                        occu[x-1] = 0
                                    }
                                }
                        }
                        if occu[x-1]  == 1000{
                            Text("1K")
                                .frame(width: 40, height: 40)
                                .rotationEffect(.degrees(90))
                                .background(Color.yellow)
                                .border(Color.white, width: 0.5)
                                .cornerRadius(45.0)
                                .foregroundColor(Color.white)
                        }
                        else if occu[x-1]  == 5000{
                            Text("5K")
                                .frame(width: 40, height: 40)
                                .rotationEffect(.degrees(90))
                                .background(Color.purple)
                                .border(Color.white, width: 0.5)
                                .cornerRadius(45.0)
                                .foregroundColor(Color.white)
                        }
                        else if occu[x-1]  == 100000{
                            Text("100K")
                                .frame(width: 40, height: 40)
                                .rotationEffect(.degrees(90))
                                .background(Color.blue)
                                .border(Color.white, width: 0.5)
                                .cornerRadius(45.0)
                                .foregroundColor(Color.white)
                        }
                        else if occu[x-1]  == 50000{
                            Text("50K")
                                .frame(width: 40, height: 40)
                                .rotationEffect(.degrees(90))
                                .background(Color.gray)
                                .border(Color.white, width: 0.5)
                                .cornerRadius(45.0)
                                .foregroundColor(Color.white)
                        }
                        else if occu[x-1]  == 10000{
                            Text("10K")
                                .frame(width: 40, height: 40)
                                .rotationEffect(.degrees(90))
                                .background(Color.orange)
                                .border(Color.white, width: 0.5)
                                .cornerRadius(45.0)
                                .foregroundColor(Color.white)
                        }
                    }
                }
            })
        }
    }
}

struct table2: View {
    @Binding var occu: [Int]
    @Binding var chip:Int
    @Binding var now: [Int]
    @Binding var bettotal: Int
    @Binding var money: Int
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            ZStack{
                Text("1st 12")
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -0))
                    .onTapGesture {
                        occu[38] = chip
                        now[38] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[38] -= chip
                            chip = 0
                            occu[38] = 0
                        }
                    }
                    if occu[38]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[38]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[38]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[38]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[38]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
            }
            
            ZStack{
                Text("2nd 12")
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[39] = chip
                        now[39] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[39] -= chip
                            chip = 0
                            occu[39] = 0
                        }
                    }
                    if occu[39]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[39]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[39]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[39]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[39]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
            }
            ZStack{
                Text("3rd 12")
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[40] = chip
                        now[40] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[40] -= chip
                            chip = 0
                            occu[40] = 0
                        }
                    }
                    if occu[40]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[40]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[40]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[40]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[40]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
                    }
            }
        }).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -75))
    }
}

struct table3: View {
    @Binding var occu: [Int]
    @Binding var chip:Int
    @Binding var now: [Int]
    @Binding var bettotal: Int
    @Binding var money: Int
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            ZStack{
                Text("1 - 18")
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -0))
                    .onTapGesture {
                        occu[41] = chip
                        now[41] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[41] -= chip
                            chip = 0
                            occu[41] = 0
                        }
                    }
                    if occu[41]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[41]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[41]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
                    else if occu[41]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .onTapGesture {
                                chip = 50000
                            }
                    }
                    else if occu[41]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                    }
            }
            ZStack{
                Text("Even")
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0)).onTapGesture {
                        occu[42] = chip
                        now[42] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[42] -= chip
                            chip = 0
                            occu[42] = 0
                        }
                    }
                    if occu[42]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[42]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[42]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[42]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[42]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
            }
            ZStack{
                Text("")
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[43] = chip
                        now[43] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[43] -= chip
                            chip = 0
                            occu[43] = 0
                        }
                    }
                    Text("")
                        .frame(width: 30, height: 30)
                        .background(Color.red)
                        .border(Color.white, width: 0.5)
                        .rotationEffect(.degrees(45))
                        .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                        .onTapGesture {
                            occu[43] = chip
                            now[43] += chip
                            bettotal += chip
                            if money > chip{
                                money -= chip
                            }
                            else if money == chip{
                                money -= chip
                                chip = 0
                            }
                            else{
                                bettotal -= chip
                                now[43] -= chip
                                chip = 0
                                occu[43] = 0
                            }
                        }
                    if occu[43]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[43]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[43]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[43]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[43]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
            }
            ZStack{
                Text("")
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[44] = chip
                        now[44] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[44] -= chip
                            chip = 0
                            occu[44] = 0
                        }
                    }
                Text("")
                    .frame(width: 30, height: 30)
                    .background(Color.black)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(45))
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[44] = chip
                        now[44] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[44] -= chip
                            chip = 0
                            occu[44] = 0
                        }
                    }
                    if occu[44]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[44]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[44]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[44]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[44]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
            }
            ZStack{
                Text("Odd")
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[45] = chip
                        now[45] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[45] -= chip
                            chip = 0
                            occu[45] = 0
                        }
                    }
                    if occu[45]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[45]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[45]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[45]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[45]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
            }
            ZStack{
                Text("19 - 36")
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .border(Color.white, width: 0.5)
                    .rotationEffect(.degrees(90))
                    .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .onTapGesture {
                        occu[46] = chip
                        now[46] += chip
                        bettotal += chip
                        if money > chip{
                            money -= chip
                        }
                        else if money == chip{
                            money -= chip
                            chip = 0
                        }
                        else{
                            bettotal -= chip
                            now[46] -= chip
                            chip = 0
                            occu[46] = 0
                        }
                    }
                    if occu[46]  == 1000{
                        Text("1K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.yellow)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[46]  == 5000{
                        Text("5K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.purple)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[46]  == 100000{
                        Text("100K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.blue)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[46]  == 50000{
                        Text("50K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.gray)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
                    else if occu[46]  == 10000{
                        Text("10K")
                            .frame(width: 40, height: 40)
                            .rotationEffect(.degrees(90))
                            .background(Color.orange)
                            .border(Color.white, width: 0.5)
                            .cornerRadius(45.0)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    }
            }
        }).padding(EdgeInsets(top:0, leading: 0, bottom: 0, trailing: -100))
    }
}
