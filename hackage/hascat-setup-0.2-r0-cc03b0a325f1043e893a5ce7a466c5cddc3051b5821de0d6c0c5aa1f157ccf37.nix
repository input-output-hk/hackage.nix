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
      specVersion = "1.0";
      identifier = { name = "hascat-setup"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Installation helper";
      description = "This program installs  Hascat into a given folder";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hascat-lib" or (errorHandler.buildDepError "hascat-lib"))
          (hsPkgs."hascat-system" or (errorHandler.buildDepError "hascat-system"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          ];
        buildable = true;
        };
      exes = {
        "hascat-setup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hascat-lib" or (errorHandler.buildDepError "hascat-lib"))
            (hsPkgs."hascat-system" or (errorHandler.buildDepError "hascat-system"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            ];
          buildable = true;
          };
        };
      };
    }