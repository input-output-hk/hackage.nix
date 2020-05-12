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
      identifier = { name = "ping-parser-attoparsec"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2017, Fernando Rincon Martin";
      maintainer = "frm.rincon@gmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/frincon/ping-parser-attoparsec";
      url = "";
      synopsis = "Attoparsec parsers of ping utility";
      description = "Attoparsec parsers of the output of ping utility. Currently there is only\none implementation for the Win32 version of ping and only support IPv4.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          ];
        buildable = true;
        };
      exes = {
        "ping-parser-attoparsec-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ping-parser-attoparsec" or (errorHandler.buildDepError "ping-parser-attoparsec"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ping-parser-attoparsec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ping-parser-attoparsec" or (errorHandler.buildDepError "ping-parser-attoparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            ];
          buildable = true;
          };
        };
      };
    }