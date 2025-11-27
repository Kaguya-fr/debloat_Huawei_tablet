#!/bin/bash

# GOOGLE REMOVE
pkgs=(
com.google.android.youtube
com.google.android.ext.services
com.google.android.googlequicksearchbox
com.google.android.onetimeinitializer
com.google.android.ext.shared
com.google.android.overlay.managedprovisioning
com.google.android.configupdater
com.google.android.marvin.talkback
com.google.android.apps.work.oobconfig
com.google.android.music
com.google.android.overlay.gmsconfig
com.google.android.apps.docs
com.google.android.apps.maps
com.google.android.webview
com.google.android.syncadapters.contacts
com.google.android.packageinstaller
com.google.android.gms
com.google.android.gsf
com.google.android.tts
com.google.android.partnersetup
com.google.android.videos
com.google.android.feedback
com.google.android.printservice.recommendation
com.google.android.apps.photos
com.google.android.syncadapters.calendar
com.google.android.setupwizard
)

# HUAWEI TELEMETRY / BLOAT
pkgs+=(
com.huawei.hidisk
com.huawei.hiview
com.huawei.iaware
com.huawei.android.thememanager
com.huawei.android.chr
com.huawei.android.hsf
com.huawei.nearby
com.huawei.recsys
com.huawei.trustcircle
com.huawei.phoneservice
com.huawei.screenrecorder
com.huawei.iconnect
com.huawei.KoBackup
com.huawei.hiviewtunnel
com.huawei.imedia.sws
com.huawei.hwid
com.huawei.tips
com.huawei.trustagent
com.huawei.hwasm
com.huawei.wifiprobqeservice
com.huawei.fido.uafclient
com.huawei.hicloud
com.huawei.android.totemweather
com.huawei.android.totemweatherwidget
com.huawei.android.hwaps
com.huawei.android.hwouc
com.huawei.android.wfdft
com.huawei.powergenie
com.huawei.behaviorauth
com.huawei.bd
com.huawei.android.pushagent
com.huawei.scanner
com.huawei.hifolder
com.huawei.hwdetectrepair
)

# THIRD PARTY BLOAT
pkgs+=(
com.facebook.services
com.facebook.system
com.facebook.appmanager
com.netflix.partner.activation
com.adobe.reader
com.ebay.carrier
com.android.partnerbrowsercustomizations.tmobile
com.example.android.notepad
)

# EXECUTE
for pkg in "${pkgs[@]}"; do
    adb shell pm disable-user --user 0 "$pkg"
done

echo "Debloat complete."
