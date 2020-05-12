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
      identifier = { name = "constraints-emerge"; version = "0.1.2"; };
      license = "MIT";
      copyright = "2018 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/constraints-emerge";
      url = "";
      synopsis = "Defer instance lookups until runtime";
      description = "This plugin allows you to write\n\n@\n&#123;&#45;\\# OPTIONS_GHC -fplugin Data.Constraint.Emerge.Plugin \\#&#45;&#125;\nmodule Test where\n\nimport Data.Constraint.Emerge\n\nshowAnything :: forall c. Emerge (Show c) => c -> String\nshowAnything c =\ncase emerge @(Show c) of\nJust Dict -> show c\nNothing   -> \"&#123;&#123;unshowable&#125;&#125;\"\n@\n\nwhere the 'Emerge (Show c)'  will automatically be discharged for any monomorphic 'c'.\n\nSee <https://github.com/isovector/constraints-emerge/blob/master/test/EmergeSpec.hs test/EmergeSpec.hs>\nfor a few examples of what this plugin can do for you.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."constraints-emerge" or (errorHandler.buildDepError "constraints-emerge"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }