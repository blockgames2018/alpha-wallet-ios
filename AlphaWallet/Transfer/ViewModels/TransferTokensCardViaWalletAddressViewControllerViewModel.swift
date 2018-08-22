// Copyright © 2018 Stormbird PTE. LTD.

import Foundation
import UIKit

struct TransferTokensCardViaWalletAddressViewControllerViewModel {

    var token: TokenObject
    var ticketHolder: TokenHolder

    var headerTitle: String {
		return R.string.localizable.aWalletTicketTokenTransferSelectQuantityTitle()
    }

    var backgroundColor: UIColor {
        return Colors.appBackground
    }

    var buttonTitleColor: UIColor {
        return Colors.appWhite
    }

    var buttonBackgroundColor: UIColor {
        return Colors.appHighlightGreen
    }

    var buttonFont: UIFont {
        return Fonts.regular(size: 20)!
    }
}