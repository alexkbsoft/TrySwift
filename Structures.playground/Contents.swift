import UIKit

struct Site {
    var siteName = "swiftbook.ru"
    let visitsToday = 1000
    let visitsYesterday = 1000
    
    var visitsTomorrow: Int {
        return (visitsToday + visitsYesterday)/2
    }
    
    lazy var someLazyVar: Int = 1 + 2
    
    func description() -> String {
        return """
        We have \(visitsToday); Yesterday it was \(visitsYesterday);
        \n Estimated tomorrow: \(visitsTomorrow)
        """
    }
}

let firstSite = Site()
firstSite.description()

func changeSite(site: Site) -> Site {
    var site = site
    site.siteName = "swift.ru"
    return site
}

class Host {
    var site: Site
    
    init(site: Site) {
        self.site = site;
    }
}

changeSite(site: firstSite)
firstSite

let host = Host(site: firstSite)
var siteFromHost = host.site
siteFromHost.siteName = "Ololo"
siteFromHost


//===
// let secondWebSite = Site()
// if firstSite === secondWebSite { // false
//  print("equals")
// }

firstSite
