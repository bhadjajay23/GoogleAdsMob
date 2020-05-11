###Add Banner and Interstitial Ads Unit ID in GoogleAdsMob.swift

   //Google Test Unit ID for testing ads
    struct Test {
        static var strBannerAdsID = "ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXXX"
        static var strInterstitialAdsID = "ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXXX"
    }
    
    //Google Live admob Unit ID for live ads
    struct Live {
        static var strBannerAdsID = "ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXXX"
        static var strInterstitialAdsID = "ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXXX"
    }
###Initialization Memory

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //if isLiveUnitID passing parameter false than displaying test ads and if isLiveUnitID passing parameter true than displaying live ads.
        GoogleAdMob.sharedInstance.initializeInterstitial(isLiveUnitID: false)
        GoogleAdMob.sharedInstance.initializeBannerView(isLiveUnitID: false)
        
        return true
    }

###Show Interstitial Ads

   GoogleAdMob.sharedInstance.showInterstitial()
###Show Banner Ads

   GoogleAdMob.sharedInstance.showBannerView()
###Hide Banner Ads

   GoogleAdMob.sharedInstance.hideBannerView()