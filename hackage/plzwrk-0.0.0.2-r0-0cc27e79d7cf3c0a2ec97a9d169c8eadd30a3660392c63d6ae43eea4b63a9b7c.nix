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
    flags = { plzwrk-enable-asterius = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "plzwrk"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Mike Solomon";
      maintainer = "mike@meeshkan.com";
      author = "Mike Solomon";
      homepage = "https://github.com/meeshkan/plzwrk#readme";
      url = "";
      synopsis = "A front-end framework";
      description = "Please see the README on GitHub at <https://github.com/meeshkan/plzwrk#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (flags.plzwrk-enable-asterius) (hsPkgs."asterius-prelude" or (errorHandler.buildDepError "asterius-prelude"));
        buildable = true;
        };
      exes = {
        "kitchen-sink-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plzwrk" or (errorHandler.buildDepError "plzwrk"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "hello-world-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plzwrk" or (errorHandler.buildDepError "plzwrk"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "plzwrk-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."plzwrk" or (errorHandler.buildDepError "plzwrk"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }