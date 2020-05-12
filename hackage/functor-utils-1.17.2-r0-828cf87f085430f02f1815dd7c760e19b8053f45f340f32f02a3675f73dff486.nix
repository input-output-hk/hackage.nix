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
      identifier = { name = "functor-utils"; version = "1.17.2"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/functor-utils";
      url = "";
      synopsis = "Collection of functor utilities, providing handy operators, like generalization of (.).";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }