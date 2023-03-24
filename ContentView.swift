//  Created by Lucas Real Dias on 21/03/23.


import SwiftUI

struct ContentView: View {
    
    @State var red = ""
    @State var green = ""
    @State var blue = ""
    @State var showAlert = false
    
    var body: some View {
        
        ZStack{
            ColorAsset.background
            
            VStack{
                HStack{
                    HStack{
                        (Text("Simulador ") +
                         Text("R")
                            .foregroundColor(.red) +
                         Text("G")
                            .foregroundColor(.green) +
                         Text("B")
                            .foregroundColor(.blue))
                    }
                }
                .padding(.top, 20)
                .font(.system(size: 40).weight(.light))
                
                Text("Insira um número de \(Text("1 a 255").fontWeight(.bold))")
                    .padding(.bottom, 10)
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                
                Form {
                    HStack{
                        Text("Red:")
                        TextField(
                            "Red",
                            text: $red,
                            prompt: Text("ex. 155")
                        )
                        .padding(10)
                        .keyboardType(.decimalPad)
                    }
                    .font(.system(size: 20))
                   
                    HStack{
                        Text("Green:")
                        TextField(
                            "Green",
                            text: $green,
                            prompt: Text("ex. 155")
                        )
                        .padding(10)
                        .keyboardType(.decimalPad)
                    }
                    .font(.system(size: 20))
                  
                    HStack{
                        Text("Blue:")
                        TextField(
                            "Blue",
                            text: $blue,
                            prompt: Text("ex. 155")
                        )
                        .padding(10)
                        .keyboardType(.decimalPad)
                    }
                    .font(.system(size: 20))
                }
                .frame( maxWidth: 300, maxHeight: 250)
                .padding(.top, -20)
                .padding(.bottom, 10)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(RGBColor.rgbColor(r: red, g: green, b: blue))
                    .frame(maxWidth: 280, maxHeight: 200, alignment: .center)
               
                HStack{
                    Button("Copiar") {
                        UIPasteboard.general.string = "rgb(\(red), \(green), \(blue))"
                        showAlert = true
                    }
                    .alert("Copy", isPresented: $showAlert){
                    } message: {
                        Text("rgb(\(red), \(green), \(blue)) copiado com sucesso para a área de transferência.")
                    }
                    .padding([.top,.bottom], 5)
                    .padding([.trailing,.leading], 22)
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(12)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 65)
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
