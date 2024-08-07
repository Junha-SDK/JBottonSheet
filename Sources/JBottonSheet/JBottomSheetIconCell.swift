import UIKit
import SnapKit
import Then
import JLabel

public class JBottomSheetIconCell: UITableViewCell {
    
    public static let identifier = "JBottomSheetIconCell"
    
    public var iconImage = UIImageView().then {
        $0.tintColor = .white
    }

    public var mainTitle = JNLabel(font: UIFont.Pretendard.labelLarge,
                                   textColor: UIColor.white
 )

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .gray
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        contentView.addSubviews([iconImage, mainTitle])

        iconImage.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(20.0)
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(28.0)
        }
        
        mainTitle.snp.makeConstraints {
            $0.leading.equalTo(iconImage.snp.trailing).offset(24.0)
            $0.centerY.equalToSuperview()
            $0.trailing.equalTo(-5)
        }
    }
    
    public func setup(image: UIImage, text: String) {
        self.iconImage.image = image
        self.mainTitle.text = text
    }
}
