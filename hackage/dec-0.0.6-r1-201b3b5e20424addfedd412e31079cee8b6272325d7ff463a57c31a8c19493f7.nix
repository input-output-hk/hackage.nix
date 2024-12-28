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
      identifier = { name = "dec"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019-2021 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/dec";
      url = "";
      synopsis = "Decidable propositions.";
      description = "This package provides a @Dec@ type.\n\n@\ntype Neg a = a -> Void\n\ndata Dec a\n\\    = Yes a\n\\    | No (Neg a)\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."boring" or (errorHandler.buildDepError "boring"))
        ];
        buildable = true;
      };
    };
  }