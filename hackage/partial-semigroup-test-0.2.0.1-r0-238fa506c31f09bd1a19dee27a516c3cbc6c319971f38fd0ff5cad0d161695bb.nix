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
    flags = { enable-hedgehog = true; };
    package = {
      specVersion = "1.22";
      identifier = { name = "partial-semigroup-test"; version = "0.2.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup";
      url = "";
      synopsis = "Testing utilities for the partial-semigroup package";
      description = "Testing utilities for the @partial-semigroup@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs."partial-semigroup-hedgehog" or (errorHandler.buildDepError "partial-semigroup-hedgehog"));
        buildable = true;
        };
      };
    }