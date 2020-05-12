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
    flags = { parsec1 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "parsec-numbers"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "chr.maeder@web.de";
      homepage = "";
      url = "";
      synopsis = "Utilities for parsing numbers from strings";
      description = "parsec-numbers provides the number parsers without the need to\nuse a large (and unportable) token parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (if flags.parsec1
          then [ (hsPkgs."parsec1" or (errorHandler.buildDepError "parsec1")) ]
          else [ (hsPkgs."parsec" or (errorHandler.buildDepError "parsec")) ]);
        buildable = true;
        };
      };
    }