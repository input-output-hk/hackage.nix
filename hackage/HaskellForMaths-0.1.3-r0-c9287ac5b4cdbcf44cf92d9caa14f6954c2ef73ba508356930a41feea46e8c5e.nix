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
      specVersion = "1.2";
      identifier = { name = "HaskellForMaths"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskellformaths-at-googlemail-dot-com";
      author = "David Amos";
      homepage = "http://www.polyomino.f2s.com/haskellformathsv2/HaskellForMathsv2.html";
      url = "";
      synopsis = "";
      description = "Math library - combinatorics, group theory, commutative algebra, non-commutative algebra";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }