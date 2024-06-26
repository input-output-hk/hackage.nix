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
      identifier = { name = "netrc"; version = "0.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "© 2015 Herbert Valerio Riedel";
      maintainer = "https://github.com/haskell-hvr";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/haskell-hvr/netrc";
      url = "";
      synopsis = "Parser for .netrc files";
      description = "This package provides a parser and a printer for so-called @.netrc@ files.\n\nSee <http://linux.die.net/man/5/netrc netrc(5)> manual page for more\ninformation about @.netrc@ files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      tests = {
        "test-netrc" = {
          depends = [
            (hsPkgs."netrc" or (errorHandler.buildDepError "netrc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }