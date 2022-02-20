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
      identifier = { name = "string-conv-tests"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Dino Morelli, 2022";
      maintainer = "dino@ui3.info";
      author = "Dino Morelli";
      homepage = "https://github.com/dino-/string-conv-tests";
      url = "";
      synopsis = "Tests for the string-conv library";
      description = "These are in a separate project not only to keep\ndependencies low when the string-conv library is included\nin a project but also because these property tests use\n`quickcheck-instances` which defines many orphan\ninstances. Never a good idea to force instances like this\non other projects.";
      buildType = "Simple";
      };
    components = {
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }