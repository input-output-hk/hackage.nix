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
      identifier = { name = "KiCS"; version = "0.8.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Bernd Braßel";
      author = "Bernd Braßel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "A compiler from Curry to Haskell";
      description = "This package builds two binaries, kics and kicsi, respectively.\nThe first is the Curry to Haskell compiler, the latter a text\nbased interactive environment.";
      buildType = "Simple";
      };
    components = {
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
        "kicsi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            ];
          buildable = true;
          };
        };
      };
    }