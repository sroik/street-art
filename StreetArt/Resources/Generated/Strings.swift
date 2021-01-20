// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable function_parameter_count identifier_name line_length type_body_length
internal enum S {
  /// Accept
  internal static let accept = S.tr("General", "accept")
  /// Allow
  internal static let allow = S.tr("General", "allow")
  /// Camera
  internal static let camera = S.tr("General", "camera")
  /// Cancel
  internal static let cancel = S.tr("General", "cancel")
  /// Continue
  internal static let `continue` = S.tr("General", "continue")
  /// Date
  internal static let date = S.tr("General", "date")
  /// Delete
  internal static let delete = S.tr("General", "delete")
  /// Details
  internal static let details = S.tr("General", "details")
  /// Distance
  internal static let distance = S.tr("General", "distance")
  /// Done
  internal static let done = S.tr("General", "done")
  /// Duration
  internal static let duration = S.tr("General", "duration")
  /// Edit
  internal static let edit = S.tr("General", "edit")
  /// Facebook
  internal static let facebook = S.tr("General", "facebook")
  /// Forever
  internal static let forever = S.tr("General", "forever")
  /// History
  internal static let history = S.tr("General", "history")
  /// iMessage
  internal static let imessage = S.tr("General", "imessage")
  /// Instagram
  internal static let instagram = S.tr("General", "instagram")
  /// Library
  internal static let library = S.tr("General", "library")
  /// Loading
  internal static let loading = S.tr("General", "loading")
  /// Month
  internal static let month = S.tr("General", "month")
  /// Monthly
  internal static let monthly = S.tr("General", "monthly")
  /// Months
  internal static let months = S.tr("General", "months")
  /// Music
  internal static let music = S.tr("General", "music")
  /// Never
  internal static let never = S.tr("General", "never")
  /// Next
  internal static let next = S.tr("General", "next")
  /// No
  internal static let no = S.tr("General", "no")
  /// Notifications
  internal static let notifications = S.tr("General", "notifications")
  /// OK
  internal static let ok = S.tr("General", "ok")
  /// Oops...
  internal static let oops = S.tr("General", "oops")
  /// Open
  internal static let `open` = S.tr("General", "open")
  /// Other
  internal static let other = S.tr("General", "other")
  /// Popular
  internal static let popular = S.tr("General", "popular")
  /// Remove
  internal static let remove = S.tr("General", "remove")
  /// Restart
  internal static let restart = S.tr("General", "restart")
  /// Restore
  internal static let restore = S.tr("General", "restore")
  /// Retry
  internal static let retry = S.tr("General", "retry")
  /// Save
  internal static let save = S.tr("General", "save")
  /// Settings
  internal static let settings = S.tr("General", "settings")
  /// Share
  internal static let share = S.tr("General", "share")
  /// Skip
  internal static let skip = S.tr("General", "skip")
  /// Sounds
  internal static let sounds = S.tr("General", "sounds")
  /// Store
  internal static let store = S.tr("General", "store")
  /// Subscribe
  internal static let subscribe = S.tr("General", "subscribe")
  /// Support
  internal static let support = S.tr("General", "support")
  /// Time
  internal static let time = S.tr("General", "time")
  /// unlimited
  internal static let unlimited = S.tr("General", "unlimited")
  /// Vibration
  internal static let vibration = S.tr("General", "vibration")
  /// Watch
  internal static let watch = S.tr("General", "watch")
  /// Week
  internal static let week = S.tr("General", "week")
  /// Weekly
  internal static let weekly = S.tr("General", "weekly")
  /// Yes
  internal static let yes = S.tr("General", "yes")
  /// Add Widgets
  internal static let addWidgets = S.tr("General", "add.widgets")
  /// Are you sure?
  internal static let areYouSure = S.tr("General", "are.you.sure")
  /// Are you sure you want to restart?
  internal static let areYouSureToRestart = S.tr("General", "are.you.sure.to.restart")
  /// Best Value
  internal static let bestOption = S.tr("General", "best.option")
  /// Cancel anytime
  internal static let cancelAnytime = S.tr("General", "cancel.anytime")
  /// Coming Soon
  internal static let comingSoon = S.tr("General", "coming.soon")
  /// Amazing!
  internal static let complimentAmazing = S.tr("General", "compliment.amazing")
  /// Awesome!
  internal static let complimentAwesome = S.tr("General", "compliment.awesome")
  /// Cool!
  internal static let complimentCool = S.tr("General", "compliment.cool")
  /// Fantastic!
  internal static let complimentFantastic = S.tr("General", "compliment.fantastic")
  /// Great!
  internal static let complimentGreat = S.tr("General", "compliment.great")
  /// Wow!
  internal static let complimentWow = S.tr("General", "compliment.wow")
  /// By tapping Continue, you confirm that you acknowledge and accepted our %@ and %@.
  internal static func consentBody(_ p1: Any, _ p2: Any) -> String {
    return S.tr("General", "consent.body", String(describing: p1), String(describing: p2))
  }
  /// Welcome!
  internal static let consentTitle = S.tr("General", "consent.title")
  /// By tapping Continue you agree to our %@ and %@.
  internal static func consentBodyShort(_ p1: Any, _ p2: Any) -> String {
    return S.tr("General", "consent.body.short", String(describing: p1), String(describing: p2))
  }
  /// Data Sharing Consent
  internal static let dataSharingConsent = S.tr("General", "data.sharing.consent")
  /// Every Day
  internal static let everyDay = S.tr("General", "every.day")
  /// Every Month
  internal static let everyMonth = S.tr("General", "every.month")
  /// Every Week
  internal static let everyWeek = S.tr("General", "every.week")
  /// Every Year
  internal static let everyYear = S.tr("General", "every.year")
  /// Every %@ seconds
  internal static func everyNSeconds(_ p1: Any) -> String {
    return S.tr("General", "every.n.seconds", String(describing: p1))
  }
  /// Failed to Restore
  internal static let failedToRestoreMessage = S.tr("General", "failed.to.restore.message")
  /// Failed to Subscribe
  internal static let failedToSubscribeMessage = S.tr("General", "failed.to.subscribe.message")
  /// Failed to share
  internal static let fbSharingErrorMessage = S.tr("General", "fb.sharing.error.message")
  /// Warning
  internal static let fbSharingErrorTitle = S.tr("General", "fb.sharing.error.title")
  /// Forever for %@
  internal static func foreverForPrice(_ p1: Any) -> String {
    return S.tr("General", "forever.for.price", String(describing: p1))
  }
  /// Free
  internal static let freeAdjective = S.tr("General", "free.adjective")
  /// GET NOW
  internal static let getNow = S.tr("General", "get.now")
  /// Get Premium
  internal static let getPremium = S.tr("General", "get.premium")
  /// Get
  internal static let getVerb = S.tr("General", "get.verb")
  /// Get x%@
  internal static func getX(_ p1: Any) -> String {
    return S.tr("General", "get.x", String(describing: p1))
  }
  /// Please allow access to Notifications.
  internal static let giveNotificationsAccess = S.tr("General", "give.notifications.access")
  /// Level %@
  internal static func levelN(_ p1: Any) -> String {
    return S.tr("General", "level.n", String(describing: p1))
  }
  /// Please wait, this may take awhile.
  internal static let loadingMessage = S.tr("General", "loading.message")
  /// Please wait
  internal static let loadingTitle = S.tr("General", "loading.title")
  /// More Levels
  internal static let moreLevels = S.tr("General", "more.levels")
  /// My Works
  internal static let myWorks = S.tr("General", "my.works")
  /// %@ days trial
  internal static func nDaysTrial(_ p1: Any) -> String {
    return S.tr("General", "n.days.trial", String(describing: p1))
  }
  /// %@ days trial, then %@/month
  internal static func nDaysTrialThenPriceMonth(_ p1: Any, _ p2: Any) -> String {
    return S.tr("General", "n.days.trial.then.price.month", String(describing: p1), String(describing: p2))
  }
  /// %@ days trial, then %@/week
  internal static func nDaysTrialThenPriceWeek(_ p1: Any, _ p2: Any) -> String {
    return S.tr("General", "n.days.trial.then.price.week", String(describing: p1), String(describing: p2))
  }
  /// %@ days trial, then %@/year
  internal static func nDaysTrialThenPriceYear(_ p1: Any, _ p2: Any) -> String {
    return S.tr("General", "n.days.trial.then.price.year", String(describing: p1), String(describing: p2))
  }
  /// %@ s
  internal static func nSecondsShort(_ p1: Any) -> String {
    return S.tr("General", "n.seconds.short", String(describing: p1))
  }
  /// Please check your internet connection and try again.
  internal static let noInternet = S.tr("General", "no.internet")
  /// Please allow access to Camera
  internal static let noCameraAccessMessage = S.tr("General", "no.camera.access.message")
  /// You need to install Facebook's app to share
  internal static let noFbAccountMessage = S.tr("General", "no.fb.account.message")
  /// No Facebook Account Found
  internal static let noFbAccountTitle = S.tr("General", "no.fb.account.title")
  /// Sorry, it looks like you don't have any purchases
  internal static let noItemsToRestore = S.tr("General", "no.items.to.restore")
  /// Please allow access to Microphone
  internal static let noMicAccessMessage = S.tr("General", "no.mic.access.message")
  /// Please Allow Access to Photos
  internal static let noPhotoLibraryAccessImportMessage = S.tr("General", "no.photo.library.access.import.message")
  /// 1 month for %@
  internal static func oneMonthForPrice(_ p1: Any) -> String {
    return S.tr("General", "one.month.for.price", String(describing: p1))
  }
  /// 1 week for %@
  internal static func oneWeekForPrice(_ p1: Any) -> String {
    return S.tr("General", "one.week.for.price", String(describing: p1))
  }
  /// 1 year for %@
  internal static func oneYearForPrice(_ p1: Any) -> String {
    return S.tr("General", "one.year.for.price", String(describing: p1))
  }
  /// Opt-out
  internal static let optOut = S.tr("General", "opt.out")
  /// You confirmed that you reviewed and accepted our Privacy Policy and Terms of Use. Are you sure that you want to opt-out ? You'll not be able to use this application.
  internal static let optOutDialogBody = S.tr("General", "opt.out.dialog.body")
  /// or continue with a limited version
  internal static let orContinueLimited = S.tr("General", "or.continue.limited")
  /// Remove ads forever and enjoy the best gaming experience
  internal static let popupAdfreeMessage = S.tr("General", "popup.adfree.message")
  /// %@/month
  internal static func pricePerMonth(_ p1: Any) -> String {
    return S.tr("General", "price.per.month", String(describing: p1))
  }
  /// %@/week
  internal static func pricePerWeek(_ p1: Any) -> String {
    return S.tr("General", "price.per.week", String(describing: p1))
  }
  /// %@/year
  internal static func pricePerYear(_ p1: Any) -> String {
    return S.tr("General", "price.per.year", String(describing: p1))
  }
  /// %@/week after trial ends
  internal static func pricePerWeekAfterTrial(_ p1: Any) -> String {
    return S.tr("General", "price.per.week.after.trial", String(describing: p1))
  }
  /// Privacy Policy
  internal static let privacyPolicy = S.tr("General", "privacy.policy")
  /// Rate Us
  internal static let rateApp = S.tr("General", "rate.app")
  /// Remove Ads
  internal static let removeAds = S.tr("General", "remove.ads")
  /// Remove Ads?
  internal static let removeAdsQuestion = S.tr("General", "remove.ads.question")
  /// Repeat
  internal static let repeatNoun = S.tr("General", "repeat.noun")
  /// Restore Purchases
  internal static let restorePurchases = S.tr("General", "restore.purchases")
  /// Sorry, you have to watch a video to the end to get a reward.
  internal static let rewardedVideoClosed = S.tr("General", "rewarded.video.closed")
  /// There are no videos available at the moment. Please, try again later.
  internal static let rewardedVideoNoFill = S.tr("General", "rewarded.video.no.fill")
  /// Save %@
  internal static func savePercent(_ p1: Any) -> String {
    return S.tr("General", "save.percent", String(describing: p1))
  }
  /// see all
  internal static let seeAll = S.tr("General", "see.all")
  /// Copy %@ tag to use it in your post
  internal static func sharingHashtagMessage(_ p1: Any) -> String {
    return S.tr("General", "sharing.hashtag.message", String(describing: p1))
  }
  /// Something went wrong.
  internal static let somethingWentWrong = S.tr("General", "something.went.wrong")
  /// subscribe for %@
  internal static func subscribeFor(_ p1: Any) -> String {
    return S.tr("General", "subscribe.for", String(describing: p1))
  }
  /// Plan automatically renews monthly
  internal static let subscriptionRenewPlanMonthly = S.tr("General", "subscription.renew.plan.monthly")
  /// Plan automatically renews weekly
  internal static let subscriptionRenewPlanWeekly = S.tr("General", "subscription.renew.plan.weekly")
  /// Subscription auto-renews at %@ per month
  internal static func subscriptionRenewsMonthly(_ p1: Any) -> String {
    return S.tr("General", "subscription.renews.monthly", String(describing: p1))
  }
  /// Terms Of Use
  internal static let termsOfUse = S.tr("General", "terms.of.use")
  /// Try again
  internal static let tryAgain = S.tr("General", "try.again")
  /// Try Premium
  internal static let tryPremium = S.tr("General", "try.premium")
  /// Try for Free
  internal static let tryForFree = S.tr("General", "try.for.free")
  /// Version %@
  internal static func versionDescription(_ p1: Any) -> String {
    return S.tr("General", "version.description", String(describing: p1))
  }
}
// swiftlint:enable function_parameter_count identifier_name line_length type_body_length

// MARK: - Implementation Details

extension S {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
