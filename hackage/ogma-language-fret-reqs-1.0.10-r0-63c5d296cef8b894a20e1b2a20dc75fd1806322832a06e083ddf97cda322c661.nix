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
      specVersion = "2.0";
      identifier = { name = "ogma-language-fret-reqs"; version = "1.0.10"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perezdominguez@nasa.gov";
      author = "Ivan Perez, Alwyn Goodloe";
      homepage = "http://nasa.gov";
      url = "";
      synopsis = "Ogma: Runtime Monitor translator: FRET Component Requirement DB Frontend";
      description = "Ogma is a tool to facilitate the integration of safe runtime monitors into\nother systems. Ogma extends\n<https://github.com/Copilot-Language/copilot Copilot>, a high-level runtime\nverification framework that generates hard real-time C99 code.\n\nThis library contains a frontend to read FRET Component Requirement Databases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ogma-language-cocospec" or (errorHandler.buildDepError "ogma-language-cocospec"))
          (hsPkgs."ogma-language-smv" or (errorHandler.buildDepError "ogma-language-smv"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ogma-extra" or (errorHandler.buildDepError "ogma-extra"))
            (hsPkgs."ogma-language-fret-reqs" or (errorHandler.buildDepError "ogma-language-fret-reqs"))
            ];
          buildable = true;
          };
        };
      };
    }