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
      identifier = { name = "wavefront-obj"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Alexis Williams";
      maintainer = "sasinestro@gmail.com";
      author = "Alexis Williams";
      homepage = "https://github.com/sasinestro/wavefront-obj#readme";
      url = "";
      synopsis = "Wavefront .obj file loader";
      description = "See <https://github.com/SASinestro/wavefront-obj/blob/master/README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      tests = {
        "wavefront-obj-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."wavefront-obj" or (errorHandler.buildDepError "wavefront-obj"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }