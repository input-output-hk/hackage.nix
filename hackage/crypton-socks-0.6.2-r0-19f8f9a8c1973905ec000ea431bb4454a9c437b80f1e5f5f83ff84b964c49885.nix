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
    flags = { example = false; network-3-0-0-0 = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "crypton-socks"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Mike Pilgrem <public@pilgrem.com>,\nKazu Yamamoto <kazu@iij.ad.jp>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/mpilgrem/crypton-socks";
      url = "";
      synopsis = "SOCKS Protocol Version 5";
      description = "A library implementing SOCKS Protocol Version 5.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
      exes = {
        "crypton-socks-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypton-socks" or (errorHandler.buildDepError "crypton-socks"))
          ] ++ (if flags.network-3-0-0-0
            then [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
            ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
          buildable = if !flags.example then false else true;
        };
      };
    };
  }