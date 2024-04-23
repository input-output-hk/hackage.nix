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
      specVersion = "1.8";
      identifier = { name = "uhc-light"; version = "1.1.9.4"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc";
      url = "";
      synopsis = "Part of UHC packaged as cabal/hackage installable library";
      description = "A 'light' variant of UHC including only an API and executables for compiling to Core representation (uhcl) and running CoreRun (uhcr). This version is just to test the infrastructure. Later versions will provide a fleshing out of the API and completion of the now rudimentary platform independent (Haskell) interpreted running etc..";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
        ];
        buildable = true;
      };
      exes = {
        "uhcl" = {
          depends = [
            (hsPkgs."uhc-light" or (errorHandler.buildDepError "uhc-light"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
          buildable = true;
        };
        "uhcr" = {
          depends = [
            (hsPkgs."uhc-light" or (errorHandler.buildDepError "uhc-light"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
          buildable = true;
        };
      };
    };
  }