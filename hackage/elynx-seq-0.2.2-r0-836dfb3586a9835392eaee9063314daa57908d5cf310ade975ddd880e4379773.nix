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
      specVersion = "1.12";
      identifier = { name = "elynx-seq"; version = "0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "Dominik Schrempf (2020)";
      maintainer = "dominik.schrempf@gmail.com";
      author = "Dominik Schrempf";
      homepage = "https://github.com/dschrempf/elynx#readme";
      url = "";
      synopsis = "Handle molecular sequences";
      description = "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."elynx-tools" or (errorHandler.buildDepError "elynx-tools"))
          (hsPkgs."matrices" or (errorHandler.buildDepError "matrices"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
        buildable = true;
        };
      tests = {
        "seq-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elynx-seq" or (errorHandler.buildDepError "elynx-seq"))
            (hsPkgs."elynx-tools" or (errorHandler.buildDepError "elynx-tools"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            (hsPkgs."matrices" or (errorHandler.buildDepError "matrices"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            ];
          buildable = true;
          };
        };
      };
    }