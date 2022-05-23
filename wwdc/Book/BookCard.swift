//
//  BookCard.swift
//  wwdc
//
//  Created by apple developer academy on 2022/05/24.
//

import SwiftUI

struct BookCard: View {
    let book: Book
    let progress: Double
    
    
    var body: some View {
        
        HStack {
            book.image
                .resizable()
                .frame(width: 80, height: 120)
                .padding()
                
            VStack(alignment: .leading, spacing: 2) {
                Text(book.coverName).font(.headline)
                Text(book.author).font(.caption)
            }
            
            Spacer()
            
            Image(systemName: "gobackward")
        }
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: books[0], progress: 50.0)
    }
}
