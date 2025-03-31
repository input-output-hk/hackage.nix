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
      specVersion = "3.0";
      identifier = { name = "weave-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://gitlab.com/lysxia/weave";
      url = "";
      synopsis = "Core definitions for weave";
      description = "The four variants of @Weave@, a control structure for defining\n/breadth-first unfolds/ compositionally.\n.\nSee <https://hackage.haskell.org/package/weave weave> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }