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
      identifier = { name = "ogma-core"; version = "1.6.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perezdominguez@nasa.gov";
      author = "Ivan Perez, Alwyn Goodloe";
      homepage = "https://github.com/nasa/ogma";
      url = "";
      synopsis = "Ogma: Helper tool to interoperate between Copilot and other languages.";
      description = "Ogma is a tool to facilitate the integration of safe runtime monitors into\nother systems. Ogma extends\n<https://github.com/Copilot-Language/copilot Copilot>, a high-level runtime\nverification framework that generates hard real-time C99 code.\n\nThis package implements the internal commands of ogma.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ogma-extra" or (errorHandler.buildDepError "ogma-extra"))
          (hsPkgs."ogma-language-c" or (errorHandler.buildDepError "ogma-language-c"))
          (hsPkgs."ogma-language-cocospec" or (errorHandler.buildDepError "ogma-language-cocospec"))
          (hsPkgs."ogma-language-copilot" or (errorHandler.buildDepError "ogma-language-copilot"))
          (hsPkgs."ogma-language-jsonspec" or (errorHandler.buildDepError "ogma-language-jsonspec"))
          (hsPkgs."ogma-language-smv" or (errorHandler.buildDepError "ogma-language-smv"))
          (hsPkgs."ogma-language-xmlspec" or (errorHandler.buildDepError "ogma-language-xmlspec"))
          (hsPkgs."ogma-spec" or (errorHandler.buildDepError "ogma-spec"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ogma-core" or (errorHandler.buildDepError "ogma-core"))
          ];
          buildable = true;
        };
      };
    };
  }