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
      specVersion = "2.2";
      identifier = { name = "type-rig"; version = "0.1"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2022 Ashley Yakeley";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/AshleyYakeley/type-rig#readme";
      url = "";
      synopsis = "Classes for the rig (sums and products) of types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
        ];
        buildable = true;
      };
    };
  }