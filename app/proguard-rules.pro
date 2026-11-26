-keep class org.prauga.contacts.model.Sources {
  public <init>(...);
}

# The support library contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version.  We know about them, and they are safe.
-dontwarn android.support.**

# Xml files containing onClick (menus and layouts) require that proguard not
# remove their handlers.
-keepclassmembers class * extends android.app.Activity {
  public void *(android.view.View);
  public void *(android.view.MenuItem);
}

# Needed for tests
-keep class org.prauga.contacts.compat.CompatUtils { *; }
-keep class org.prauga.contacts.Collapser { *; }
-keep class org.prauga.contacts.ContactPhotoManager { *; }
-keep class org.prauga.contacts.ContactsApplication { *; }
-keep class org.prauga.contacts.ContactsUtils { *; }
-keep class org.prauga.contacts.ContactSaveService { *; }
-keep class org.prauga.contacts.ContactSaveService$* { *; }
-keep class org.prauga.contacts.database.NoNullCursorAsyncQueryHandler { *; }
-keep class org.prauga.contacts.database.SimContactDao { *; }
-keep class org.prauga.contacts.database.SimContactDao$* { *; }
-keep class org.prauga.contacts.database.SimContactDaoImpl { *; }
-keep class org.prauga.contacts.DynamicShortcuts { *; }
-keep class org.prauga.contacts.editor.ContactEditorUtils { *; }
-keep class org.prauga.contacts.editor.EditorUiUtils { *; }
-keep class org.prauga.contacts.format.FormatUtils { *; }
-keep class org.prauga.contacts.format.TextHighlighter { *; }
-keep class org.prauga.contacts.group.GroupUtil { *; }
-keep class org.prauga.contacts.interactions.ContactDeletionInteraction { *; }
-keep class org.prauga.contacts.interactions.ContactInteractionUtil { *; }
-keep class org.prauga.contacts.list.ContactListItemView { *; }
-keep class org.prauga.contacts.list.ContactsSectionIndexer { *; }
-keep class org.prauga.contacts.location.CountryDetector { *; }
-keep class org.prauga.contacts.model.account.AccountDisplayInfo { *; }
-keep class org.prauga.contacts.model.account.AccountDisplayInfoFactory { *; }
-keep class org.prauga.contacts.model.account.AccountInfo { *; }
-keep class org.prauga.contacts.model.account.AccountType { *; }
-keep class org.prauga.contacts.model.account.AccountType$* { *; }
-keep class org.prauga.contacts.model.account.AccountTypeWithDataSet { *; }
-keep class org.prauga.contacts.model.account.AccountWithDataSet { *; }
-keep class org.prauga.contacts.model.account.BaseAccountType { *; }
-keep class org.prauga.contacts.model.account.BaseAccountType$* { *; }
-keep class org.prauga.contacts.model.account.DeviceLocalAccountType { *; }
-keep class org.prauga.contacts.model.account.ExchangeAccountType { *; }
-keep class org.prauga.contacts.model.account.ExternalAccountType { *; }
-keep class org.prauga.contacts.model.account.FallbackAccountType { *; }
-keep class org.prauga.contacts.model.account.GoogleAccountType { *; }
-keep class org.prauga.contacts.model.account.SimAccountType { *; }
-keep class org.prauga.contacts.model.AccountTypeManager { *; }
-keep class org.prauga.contacts.model.AccountTypeManagerImpl { *; }
-keep class org.prauga.contacts.model.BuilderWrapper { *; }
-keep class org.prauga.contacts.model.Contact { *; }
-keep class org.prauga.contacts.model.ContactLoader { *; }
-keep class org.prauga.contacts.model.CPOWrapper { *; }
-keep class org.prauga.contacts.model.dataitem.DataItem { *; }
-keep class org.prauga.contacts.model.dataitem.DataKind { *; }
-keep class org.prauga.contacts.model.dataitem.EmailDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.EventDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.ImDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.NicknameDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.NoteDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.OrganizationDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.PhoneDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.RelationDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.SipAddressDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.StructuredNameDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.StructuredPostalDataItem { *; }
-keep class org.prauga.contacts.model.dataitem.WebsiteDataItem { *; }
-keep class org.prauga.contacts.model.DeviceLocalAccountLocator { *; }
-keep class org.prauga.contacts.model.RawContact { *; }
-keep class org.prauga.contacts.model.RawContactDelta { *; }
-keep class org.prauga.contacts.model.RawContactDeltaList { *; }
-keep class org.prauga.contacts.model.RawContactModifier { *; }
-keep class org.prauga.contacts.model.SimCard { *; }
-keep class org.prauga.contacts.model.SimContact { *; }
-keep class org.prauga.contacts.model.ValuesDelta { *; }
-keep class org.prauga.contacts.MoreContactUtils { *; }
-keep class org.prauga.contacts.preference.ContactsPreferences { *; }
-keep class org.prauga.contacts.SimImportService { *; }
-keep class org.prauga.contacts.SimImportService$* { *; }
-keep class org.prauga.contacts.test.mocks.MockContactPhotoManager { *; }
-keep class org.prauga.contacts.testing.InjectedServices { *; }
-keep class org.prauga.contacts.util.BitmapUtil { *; }
-keep class org.prauga.contacts.util.ContactDisplayUtils { *; }
-keep class org.prauga.contacts.util.DateUtils { *; }
-keep class org.prauga.contacts.util.DeviceLocalAccountTypeFactory { *; }
-keep class org.prauga.contacts.util.DeviceLocalAccountTypeFactory$* { *; }
-keep class org.prauga.contacts.util.NameConverter { *; }
-keep class org.prauga.contacts.util.PermissionsUtil { *; }
-keep class org.prauga.contacts.util.SearchUtil { *; }
-keep class org.prauga.contacts.util.SearchUtil$* { *; }
-keep class org.prauga.contacts.util.SyncUtil { *; }
-keep class org.prauga.contacts.widget.CompositeListAdapter { *; }
-keep class com.google.common.base.Function { *; }
-keep class com.google.common.base.Functions { *; }
-keep class com.google.common.base.Objects { *; }
-keep class com.google.common.base.Preconditions { *; }
-keep class com.google.common.collect.** { *; }
-keep class com.google.common.util.concurrent.** { *; }

-keep class com.android.common.widget.CompositeCursorAdapter { *; }

# Any class or method annotated with NeededForReflection.
# TODO(b/373579455): Evaluate if <init> needs to be kept.
-keep @org.prauga.contacts.test.NeededForReflection class * {
  void <init>();
}
-keepclassmembers class * {
  @org.prauga.contacts.test.NeededForReflection *;
}

# Keep classes and methods that have the guava @VisibleForTesting annotation
# TODO(b/373579455): Evaluate if <init> needs to be kept.
-keep @com.google.common.annotations.VisibleForTesting class * {
  void <init>();
}
-keepclassmembers class * {
  @com.google.common.annotations.VisibleForTesting *;
}
