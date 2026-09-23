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
      specVersion = "3.0";
      identifier = { name = "keynub-licdongle"; version = "1.1.1"; };
      license = "Apache-2.0";
      copyright = "2026 KeyNub";
      maintainer = "info@keynub.com";
      author = "KeyNub";
      homepage = "https://www.keynub.com/developers/haskell/";
      url = "";
      synopsis = "Client for the KeyNub USB license dongle";
      description = "Verify that a KeyNub USB license dongle is genuine, read and write the\nlicense records it stores, use its hardware counters and encrypt data so\nthat only a dongle can decrypt it. Pure Haskell over the SDK's flat C API:\nthe native library is loaded at run time, nothing is linked.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "stub" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keynub-licdongle" or (errorHandler.buildDepError "keynub-licdongle"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }