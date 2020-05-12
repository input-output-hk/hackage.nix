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
      identifier = { name = "forest-fire"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Paul";
      maintainer = "paul.david@redbubble.com";
      author = "Paul";
      homepage = "https://github.com/toothbrush/forest-fire#readme";
      url = "";
      synopsis = "Recursively delete CloudFormation stacks and their dependants";
      description = "This simple tool will repeatedly query CloudFormation\nstacks for outputs, and see if any other stacks are\nimporting those.  This is to make it easier to tear down\nCFn stacks which have many other stacks depending on\ntheir outputs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty-tree" or (errorHandler.buildDepError "pretty-tree"))
          ];
        buildable = true;
        };
      exes = {
        "forest-fire" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cli" or (errorHandler.buildDepError "cli"))
            (hsPkgs."forest-fire" or (errorHandler.buildDepError "forest-fire"))
            ];
          buildable = true;
          };
        };
      tests = {
        "forest-fire-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."forest-fire" or (errorHandler.buildDepError "forest-fire"))
            ];
          buildable = true;
          };
        };
      };
    }