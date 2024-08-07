import UIKit
import SnapKit
import Then
import JLabel

public class JShareCell: UITableViewCell {
    
    public static let identifier = "JShareCell"

    public var mainTitle = JNLabel(text: "공유",
                                   font: UIFont.Pretendard.titleMedium,
                                   textColor: UIColor.white
)
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        contentView.addSubview(mainTitle)
        
        mainTitle.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12.0)
            $0.leading.equalToSuperview().offset(20.0)
        }
    }
}
