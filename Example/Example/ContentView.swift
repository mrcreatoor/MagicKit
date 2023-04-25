//
//  ContentView.swift
//  Example
//
//  Created by MrCreator on 4/25/23.
//

import MagicKit
import SwiftUI

struct FirstPage: View {
    @Environment(\.safeAreaInsets) private var safeArea

    @State var show = false
    var body: some View {
        GeometryReader { _ in
            Color.white.edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    VStack(spacing:22) {
                        Text("— CHAPTER ONE — ").font(.custom("Didot-Italic", size: 25))
                        Text("The Boy Who Lived")
                            .font(.custom("Didot-Bold", size: 34))
                        Text("Mr and Mrs Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much. They were the last people you’d expect to be involved in anything strange or mysterious, because they just didn’t hold with such nonsense. Mr Dursley was the director of a firm called Grunnings, whichmade drills. He was a big, beefy man with hardly any neck, although he did have a very large moustache. Mrs Dursley was thin and blonde and had nearly twice the usual amount of neck, which came in very useful as she spent so much of her time craning over garden fences, spying on the neighbours. The Dursleys had a small son called Dudley and in their opinion there was no finer boy anywhere. The Dursleys had everything they wanted, but they also had a secret, and their greatest fear was that somebody would discover it. They didn’t think they could bear it if anyone found out about the Potters. Mrs Potter was Mrs Dursley’s sister, but they hadn’t met for several years; in fact, Mrs Dursley pretended she didn’t have a sister, because her sister and her good-for-nothing husband were as unDursleyish as it was possible to be. The Dursleys shuddered to think what the neighbours would say if the Potters arrived in the street. The Dursleys knew that the Potters had a small son, too, but they had never even seen him. This boy was another good reason for keeping the Potters away; they didn’t want Dudley mixing with a child like that. When Mr and Mrs Dursley woke up on the dull, grey Tuesday our story starts, there was nothing about the cloudy sky outside to suggest that strange and mysterious things would soon be happening all over the country. Mr Dursley hummed as he picked out his most boring tie for work and Mrs Dursley gossiped away ")
                            
                            .font(.custom("Didot", size: 20))
                            
                    }.foregroundColor(.black)
                    .padding(.horizontal, 12)
                    HStack {
                        Spacer()
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.title3)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .background {
                                RoundedRectangle(cornerRadius: .greatestFiniteMagnitude)
                                    .fill(.black)
                            }.padding(.horizontal, 12)
                            .onTapGesture {
                                show = true
                            }
                    }
                }.safeAreaAdjuster(safeArea)
            }

        }
        .magic(transition: .pageCurl(inverted: show),duration: 0.6, show: $show) {
            SecondPage(show: $show)
        }
    }
}

