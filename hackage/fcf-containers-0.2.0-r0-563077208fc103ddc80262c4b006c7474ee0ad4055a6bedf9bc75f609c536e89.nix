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
      specVersion = "1.24";
      identifier = { name = "fcf-containers"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "gspia (c) 2020-";
      maintainer = "iahogsp@gmail.com";
      author = "gspia";
      homepage = "https://github.com/gspia/fcf-containers";
      url = "";
      synopsis = "Data structures and algorithms for first-class-families";
      description = "Package fcf-containers provides type-level functions and data structures\nthat operate on type-level computations. Specifically, we mimick the\ncontents of containers-package and show how these can be used. Everything is\nbased on the ideas given in the first-class-families -package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          ];
        buildable = true;
        };
      exes = {
        "orbits" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fcf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
            ];
          buildable = true;
          };
        "fcf-doctest" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.6") [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.6"
            then true
            else false;
          };
        };
      };
    }