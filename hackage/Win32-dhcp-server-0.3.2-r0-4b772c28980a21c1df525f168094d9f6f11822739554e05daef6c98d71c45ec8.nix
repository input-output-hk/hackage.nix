{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "Win32-dhcp-server";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2015 Michael Steele";
      maintainer = "mikesteele81@gmail.com";
      author = "Michael Steele";
      homepage = "http://github.com/mikesteele81/win32-dhcp-server";
      url = "";
      synopsis = "Win32 DHCP Server Management API";
      description = "This package provides a partial binding to the Win32 DHCP Server Management\nAPI. Its purpose is to query and control a Microsoft DHCP server. Enough\nfunctionality is defined so so that Ipv4 client lease and reservation\nrecords can be manipulated programmatically._Only 32-bit versions of GHC are\nsupported at this time._\n\nHere are a few notes on the required environment:\n\n* Only 32-bit executables are supported. This is mainly because pointers\nare assumed to be 4 bytes wide in a few places. Support for 64-bit\nexecutables may be added in the future.\n\n* All library calls should be supported on Windows 7 or above.\n\n/Simple Example and Usage/\n\n@\n\\-\\- Print all MAC addresses with an active client lease\nmodule Main where\n\nimport Data.Ip\nimport Data.Mac\nimport qualified Data.Text.IO as T\nimport System.Win32.DHCP\n\nmain :: IO ()\nmain = do\n&#x20;   api <- loadDHCP\n&#x20;   clients <- enumClients api context\n&#x20;   let macs = map (showMac \\\":\\\" . clientHardwareAddress) clients\n&#x20;   mapM_ T.putStrLn macs\n&#x20; where\n&#x20;   Right subnet = readIp \\\"192.168.1.0\\\"\n&#x20;   context = Context \\\"192.168.1.5\\\" subnet\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.Win32)
          (hsPkgs.Win32-errors)
        ];
      };
    };
  }