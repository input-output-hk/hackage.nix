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
      identifier = { name = "socket-sctp"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "shea@shealevy.com";
      author = "Lars Petersen, Shea Levy <shea@shealevy.com>";
      homepage = "https://github.com/shlevy/haskell-socket-sctp";
      url = "";
      synopsis = "STCP socket extensions library.";
      description = "This is a binding to the types and operations of `libsctp`.\nThis library is intended to used in conjunction with the `socket`\nlibrary it depends on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
        ];
        libs = pkgs.lib.optional (!system.isFreebsd) (pkgs."sctp" or (errorHandler.sysDepError "sctp"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "SendReceiveMessage" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."socket-sctp" or (errorHandler.buildDepError "socket-sctp"))
          ];
          buildable = true;
        };
        "TooSmallBuffer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."socket-sctp" or (errorHandler.buildDepError "socket-sctp"))
          ];
          buildable = true;
        };
        "SendAll" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."socket-sctp" or (errorHandler.buildDepError "socket-sctp"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
          buildable = true;
        };
        "Notifications" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."socket-sctp" or (errorHandler.buildDepError "socket-sctp"))
          ];
          buildable = true;
        };
      };
    };
  }