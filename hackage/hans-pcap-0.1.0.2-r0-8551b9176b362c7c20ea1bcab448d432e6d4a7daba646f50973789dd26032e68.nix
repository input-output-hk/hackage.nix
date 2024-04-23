{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hans-pcap"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "©2014-2015 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/hans-pcap";
      url = "";
      synopsis = "Driver for real ethernet devices for HaNS";
      description = "Network ethernet device for HaNS(Currently requires hans-2.4 from the github), which can tap into a real ethernet interface, all using pcap library and preform raw packet reads & writes.\nThis is a very simple. But requires: root - to be able to use PCAP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
          (hsPkgs."pcap" or (errorHandler.buildDepError "pcap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }