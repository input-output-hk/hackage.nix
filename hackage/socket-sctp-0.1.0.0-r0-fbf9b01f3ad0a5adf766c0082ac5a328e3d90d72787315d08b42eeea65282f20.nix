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
      identifier = { name = "socket-sctp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-socket-sctp";
      url = "";
      synopsis = "STCP socket extensions library.";
      description = "This is a binding to the types and operations of `libsctp`.\nIt's intended to be used in conjunction with the `socket`\nlibrary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
          ];
        libs = [ (pkgs."sctp" or (errorHandler.sysDepError "sctp")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
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
        };
      };
    }