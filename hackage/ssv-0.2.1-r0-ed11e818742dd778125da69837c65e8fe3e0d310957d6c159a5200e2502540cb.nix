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
      identifier = { name = "ssv"; version = "0.2.1"; };
      license = "MIT";
      copyright = "Copyright © 2011 Bart Massey";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "https://github.com/BartMassey/ssv";
      url = "https://github.com/downloads/BartMassey/ssv/ssv-0.2.1.tar.gz";
      synopsis = "Comma-separated-value (CSV) read, show and write routines";
      description = "This modules provides conversion routines to and from\n\"something-separated values\", especially the infamous\n\"comma separated value\" (CSV) format.  It attempts to\nadhere to the spirit and (mostly) to the letter of RFC\n4180, which defines the 'text/csv' MIME type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "csvclean" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }