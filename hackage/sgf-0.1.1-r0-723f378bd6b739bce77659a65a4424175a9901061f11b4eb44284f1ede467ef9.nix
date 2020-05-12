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
      specVersion = "1.6";
      identifier = { name = "sgf"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "http://www.dmwit.com/sgf";
      url = "";
      synopsis = "SGF (Smart Game Format) parser";
      description = "This is a parser for the go\\/igo\\/weiqi\\/baduk fragment of the SGF format.\nEncodings latin-1, utf-8, and ascii are supported, and the parser strives\nto be robust to minor errors, especially those made by the most common SGF\neditors.  There are plans to support other games and pretty-printing in\nfuture releases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
          ];
        buildable = true;
        };
      };
    }