//
//  SecondPage.swift
//  Example
//
//  Created by MrCreator on 4/25/23.
//

import SwiftUI


struct SecondPage: View {
    @Environment(\.safeAreaInsets) private var safeArea

    @Binding var show : Bool
    var body: some View {
        GeometryReader { _ in
            Color.white.edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Text("happily as she wrestled a screaming Dudley into his high chair. None of them noticed a large tawny owl flutter past the window. At half past eight, Mr Dursley picked up his briefcase, pecked Mrs Dursley on the cheek and tried to kiss Dudley goodbye but missed, because Dudley was now having a tantrum and throwing his cereal at the walls. ‘Little tyke,’ chortled Mr Dursley as he left the house. He got into his car and backed out of number four’s drive. It was on the corner of the street that he noticed the first sign of something peculiar – a cat reading a map. For a second, Mr Dursley didn’t realise what he had seen – then he jerked his head around to look again. There was a tabby cat standing on the corner of Privet Drive, but there wasn’t a map in sight. What could he have been thinking of? It must have been a trick of the light. Mr Dursley blinked and stared at the cat. It stared back. As Mr  Dursley drove around the corner and up the road, he watched the cat in his mirror. It was now reading the sign that said Privet Drive – no, looking at the sign; cats couldn’t read maps or signs. Mr Dursley gave himself a little shake and put the cat out of his mind. As he drove towards town he thought of nothing except a large order of drills he was hoping to get that day. But on the edge of town, drills were driven out of his mind by something else. As he sat in the usual morning traffic jam, he couldn’t help noticing that there seemed to be a lot of strangely dressed people about. People in cloaks. Mr Dursley couldn’t bear people who dressed in funny clothes – the get-ups you saw on young people! He supposed this was some stupid new fashion. He drummed his fingers on the steering wheel and his eyes fell on a huddle of these weirdos standing quite close by. They were whispering excitedly together. Mr Dursley was enraged to see that a couple of them weren’t young at all; why, that man had to be older than he was, and wearing an emerald-green cloak! The nerve of him! But then it struck Mr Dursley that this was probably some silly stunt – these people were obviously collecting for something ... yes, that would be it. The traffic moved on, and a few minutes later, Mr Dursley arrived in the Grunnings car park, his mind back on drills.")
                        .foregroundColor(.black)
                        .font(.custom("Didot", size: 20))
                        .padding(.horizontal, 12)
                        .padding(.bottom, 12)

                    HStack {
                        Text("Back")
                            .foregroundColor(.white)
                            .font(.title3)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .background {
                                RoundedRectangle(cornerRadius: .greatestFiniteMagnitude)
                                    .fill(.black)
                            }.padding(.horizontal, 12)
                            .onTapGesture {
                                show = false
                            }
                        Spacer()
                    }
                }.safeAreaAdjuster(safeArea)
            }

        }

    }
    
}

