// SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
// SPDX-License-Identifier: Apache-2.0

plugins { alias(libs.plugins.pvot.android.application) }

android {
    namespace = "org.prauga.contacts"
    testNamespace = "org.prauga.contacts.tests"

    useLibrary("android.test.runner")
    useLibrary("android.test.base")
    useLibrary("android.test.mock")

    defaultConfig {
        applicationId = "org.prauga.contacts"
        versionCode = 10734
        versionName = "1.7.34"
    }

    buildTypes {
        debug {
            applicationIdSuffix = ".dev"
            resValue("string", "application_id", "org.prauga.contacts.dev")
            resValue("string", "photo_file_provider_authority", "org.prauga.contacts.dev.files")
            resValue("string", "contacts_file_provider_authority", "org.prauga.contacts.dev.files")
            resValue("string", "contacts_sdn_provider_authority", "org.prauga.contacts.dev.sdn")
        }
        release {
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro",
            )
            resValue("string", "application_id", "org.prauga.contacts")
            resValue("string", "photo_file_provider_authority", "org.prauga.contacts.files")
            resValue("string", "contacts_file_provider_authority", "org.prauga.contacts.files")
            resValue("string", "contacts_sdn_provider_authority", "org.prauga.contacts.sdn")
        }
    }

    buildFeatures { resValues = true }
}

spotless { kotlin { targetExclude("src/main/java/org/prauga/contacts/sdn/**") } }

tasks.withType<dev.detekt.gradle.Detekt>().configureEach {
    exclude("org/prauga/contacts/sdn/**")
}

dependencies {
    implementation(libs.androidx.annotation)
    implementation(libs.androidx.appcompat)
    implementation(libs.androidx.cardview)
    implementation(libs.androidx.collection)
    implementation(libs.androidx.coordinatorlayout)
    implementation(libs.androidx.core)
    implementation(libs.androidx.drawerlayout)
    implementation(libs.androidx.fragment)
    implementation(libs.androidx.localbroadcastmanager)
    implementation(libs.androidx.palette)
    implementation(libs.androidx.recyclerview)
    implementation(libs.androidx.swiperefreshlayout)
    implementation(libs.androidx.transition)
    implementation(libs.guava)
    implementation(libs.jsr305)
    implementation(libs.libphonenumber)
    implementation(libs.libphonenumber.geocoder)
    implementation(libs.material)

    androidTestImplementation(libs.androidx.test.ext.junit)
    androidTestImplementation(libs.androidx.test.rules)
    androidTestImplementation(libs.androidx.test.runner)
    androidTestImplementation(libs.androidx.uiautomator)
    androidTestImplementation(libs.hamcrest.library)
    androidTestImplementation(libs.mockito.android)
}
