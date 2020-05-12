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
      identifier = { name = "KiCS-debugger"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Bernd Braßel";
      author = "Bernd Braßel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "debug features for kics ";
      description = "This package contains the debugger for the Curry to Haskell compiler \"kics\".";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          (hsPkgs."KiCS" or (errorHandler.buildDepError "KiCS"))
          ];
        buildable = true;
        };
      exes = {
        "mkstrict" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            (hsPkgs."KiCS" or (errorHandler.buildDepError "KiCS"))
            (hsPkgs."KiCS-prophecy" or (errorHandler.buildDepError "KiCS-prophecy"))
            ];
          buildable = true;
          };
        };
      };
    }