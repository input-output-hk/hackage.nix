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
      identifier = { name = "algebra-checkers"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020-2022 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/algebra-checkers#readme";
      url = "";
      synopsis = "Model and test API surfaces algebraically";
      description = "Please see the README on GitHub at <https://github.com/isovector/algebra-checkers#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-instance-reification" or (errorHandler.buildDepError "th-instance-reification"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }