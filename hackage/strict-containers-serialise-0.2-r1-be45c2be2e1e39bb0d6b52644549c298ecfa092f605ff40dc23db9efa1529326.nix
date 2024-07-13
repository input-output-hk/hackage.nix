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
      identifier = { name = "strict-containers-serialise"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 by Ximin Luo";
      maintainer = "Ximin Luo <infinity0@pwned.gg>";
      author = "";
      homepage = "https://github.com/haskellari/strict-containers";
      url = "";
      synopsis = "Strict containers - Serialise instances";
      description = "This package provides @serialise@ utilities and instances for @strict-containers@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."strict-containers" or (errorHandler.buildDepError "strict-containers"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
        ];
        buildable = true;
      };
    };
  }