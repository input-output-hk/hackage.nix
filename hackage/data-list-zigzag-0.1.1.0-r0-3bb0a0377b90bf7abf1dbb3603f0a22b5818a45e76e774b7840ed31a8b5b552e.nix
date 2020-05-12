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
      identifier = { name = "data-list-zigzag"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Eric Brisco";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "https://github.com/erisco/data-list-zigzag";
      url = "";
      synopsis = "A list but with a balanced enumeration of Cartesian product.";
      description = "A list but with a balanced enumeration of Cartesian product.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }