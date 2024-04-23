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
    flags = { parsec3 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "parsec3-numbers"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "chr.maeder@web.de";
      homepage = "";
      url = "";
      synopsis = "Utilities for parsing numbers from Char sequences";
      description = "parsec3-numbers provides the number parsers independent from\ntoken parsers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if flags.parsec3
          then [ (hsPkgs."parsec3" or (errorHandler.buildDepError "parsec3")) ]
          else [ (hsPkgs."parsec" or (errorHandler.buildDepError "parsec")) ]);
        buildable = true;
      };
    };
  }