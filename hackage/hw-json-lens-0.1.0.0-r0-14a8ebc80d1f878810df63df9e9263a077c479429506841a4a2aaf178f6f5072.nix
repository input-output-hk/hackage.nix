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
      identifier = { name = "hw-json-lens"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Alexey Raga, 2018 John Ky";
      maintainer = "alexey.raga@gmail.com, newhoggy@gmail.com";
      author = "Alexey Raga, John Ky";
      homepage = "http://github.com/haskell-works/hw-json-lens#readme";
      url = "";
      synopsis = "Lens for hw-json";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hw-json-lens" or (errorHandler.buildDepError "hw-json-lens"))
            ];
          buildable = true;
          };
        };
      };
    }