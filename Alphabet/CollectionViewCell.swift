//
//  CollectionViewCell.swift
//  Alphabet
//
//  Created by Юрий Демиденко on 02.03.2023.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConstraints() {
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }

    func setTitleLabel(text: String) {
        titleLabel.text = text
    }

    func makeTitleLabelTextBold() {
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
    }

    func makeTitleLabelTextRegular() {
        titleLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    }

    func makeTitleLabelTextItalic() {
        titleLabel.font = UIFont.italicSystemFont(ofSize: 17)
    }
}
