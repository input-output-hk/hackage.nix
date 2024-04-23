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
      identifier = { name = "fused-effects-optics"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020-2021 Patrick Thomson";
      maintainer = "patrick.william.thomson@gmail.com";
      author = "Patrick Thomson";
      homepage = "https://github.com/fused-effects/fused-effects-optics";
      url = "";
      synopsis = "Bridge between the optics and fused-effects ecosystems.";
      description = "Provides combinators for the optics-based manipulation of state and context types provided by the fused-effects library, similar to those provided by optics-extra for mtl-based monad transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
        ];
        buildable = true;
      };
    };
  }