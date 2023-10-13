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
      specVersion = "1.18";
      identifier = { name = "Flint2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2022 Hartmut Monien";
      maintainer = "hmonien@uni-bonn.de";
      author = "Hartmut Monien";
      homepage = "https://github.com/monien/Flint2#readme";
      url = "";
      synopsis = "Haskell bindings for the flint library for number theory";
      description = "Please see the README on GitHub at <https://github.com/monien/Flint2#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          ];
        libs = [
          (pkgs."flint" or (errorHandler.sysDepError "flint"))
          (pkgs."gmp" or (errorHandler.sysDepError "gmp"))
          ];
        pkgconfig = [
          (pkgconfPkgs."flint" or (errorHandler.pkgConfDepError "flint"))
          (pkgconfPkgs."gmp" or (errorHandler.pkgConfDepError "gmp"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "Flint2-test" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }