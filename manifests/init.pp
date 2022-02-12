class install_app_windows {
  file {'c:/temp/':
    ensure =>directory,
}
  file {'c:/temp/Git-2.34.1-64-bit.exe':
    source =>"http://192.168.0.195/iso/Git-2.34.1-64-bit.exe"
}
  package { 'Git':
    ensure =>installed,
    source =>'c:\temp/Git-2.34.1-64-bit.exe',
    install_options =>['/VERYSILENT']
}
  file{'c:/temp/splunkforwarder-8.2.4-87e2dda940d1-x64-release.msi':
  source =>"http://192.168.0.195/iso/splunkforwarder-8.2.4-87e2dda940d1-x64-release.msi"
}
  package { 'Splunk':
    ensure =>installed,
    source =>'c:\temp/splunkforwarder-8.2.4-87e2dda940d1-x64-release.msi',
    install_options =>['/VERYSILENT']
}
}
