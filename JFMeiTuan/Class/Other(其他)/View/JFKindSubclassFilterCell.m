//
//  JFKindSubclassFilterCell.m
//  https://github.com/tubie/JFMeiTuan
//  http://www.jianshu.com/p/e47ca64b8caa
//

#import "JFKindSubclassFilterCell.h"
#import "JFMerchantCataGroupModel.h"

@interface JFKindSubclassFilterCell ()


@end

@implementation JFKindSubclassFilterCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+(instancetype)cellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath model:(JFMerchantCataGroupModel *)model{
    static NSString *kindSubclassFilter = @"JFKindSubclassFilterCell";
    JFKindSubclassFilterCell *cell = [tableView dequeueReusableCellWithIdentifier:kindSubclassFilter];
    if (cell == nil) {
        cell = [[JFKindSubclassFilterCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:kindSubclassFilter];
    }
    
    
    /*用这个方法给子分类 赋值的话 不能识别是哪一行的 所以用传NSIndexPath
     for (NSDictionary  *dict  in  model.list) {
     cell.textLabel.text = dict [@"name"];
     cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", dict [@"count"]];
     }
     */
    
    cell.textLabel.text = [model.list [indexPath.row] objectForKey:@"name"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", [model.list [indexPath.row] objectForKey:@"count"]];

    cell.textLabel.font = [UIFont systemFontOfSize:13];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:11];
    cell.backgroundColor = RGB(242, 242, 242);
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}
@end
