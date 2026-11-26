package org.prauga.contacts.util;

import android.net.Uri;
import android.test.AndroidTestCase;

import androidx.test.filters.SmallTest;

/**
 * Test cases for {@link ContactPhotoUtils}.
 *
 * adb shell am instrument -w -e class org.prauga.contacts.util.ContactPhotoUtilsTest \
 *   org.prauga.contacts.tests/android.test.InstrumentationTestRunner
 */
@SmallTest
public class ContactPhotoUtilsTest extends AndroidTestCase {

  private Uri tempUri;

  @Override
  protected void setUp() throws Exception {
    tempUri = ContactPhotoUtils.generateTempImageUri(getContext());
  }

  protected void tearDown() throws Exception {
    getContext().getContentResolver().delete(tempUri, null, null);
  }

  public void testFileUriDataPathFails() {
    String filePath =
        "file:///data/data/org.prauga.contacts/shared_prefs/org.prauga.contacts.xml";

    assertFalse(
        ContactPhotoUtils.savePhotoFromUriToUri(getContext(), Uri.parse(filePath), tempUri, false));
  }

  public void testFileUriCanonicalDataPathFails() {
    String filePath =
        "file:///storage/../data/data/org.prauga.contacts/shared_prefs/org.prauga.contacts.xml";

    assertFalse(
        ContactPhotoUtils.savePhotoFromUriToUri(getContext(), Uri.parse(filePath), tempUri, false));
  }

  public void testContentUriInternalPasses() {
    Uri internal = ContactPhotoUtils.generateTempImageUri(getContext());

    assertTrue(
        ContactPhotoUtils.savePhotoFromUriToUri(getContext(), internal, tempUri, true));
  }
}
