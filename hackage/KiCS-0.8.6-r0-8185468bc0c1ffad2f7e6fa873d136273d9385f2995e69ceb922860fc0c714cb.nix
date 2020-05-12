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
      identifier = { name = "KiCS"; version = "0.8.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Bernd Braßel";
      author = "Bernd Braßel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "A compiler from Curry to Haskell";
      description = "This package builds the Curry to Haskell compiler.\nNote, that you need a functional curry module\n\"Prelude.curry\" to get started.\nThe standard version of that file is contained\nin the package KiCS-libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."syb" or (errorHandler.buildDepError "syb")) ];
        buildable = true;
        };
      exes = {
        "kics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            ];
          buildable = true;
          };
        };
      };
    }