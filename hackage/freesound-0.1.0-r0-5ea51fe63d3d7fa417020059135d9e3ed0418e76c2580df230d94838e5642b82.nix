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
      specVersion = "1.2";
      identifier = { name = "freesound"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Stefan Kersten 2008-2010";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://code.haskell.org/~StefanKersten/code/freesound";
      url = "";
      synopsis = "Access the Freesound Project database";
      description = "Access the Freesound Project database. The Freesound\nProject is a collaborative database of Creative Commons\nlicensed sounds.\n\n<http://www.freesound.org/>\n\n<http://www.creativecommons.org/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."data-accessor-template" or (errorHandler.buildDepError "data-accessor-template"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = { "freesound" = { buildable = true; }; };
      };
    }