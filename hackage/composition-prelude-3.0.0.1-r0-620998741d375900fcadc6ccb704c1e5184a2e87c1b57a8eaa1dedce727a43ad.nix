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
    flags = { development = false; cross = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "composition-prelude"; version = "3.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Higher-order function combinators";
      description = "Replacement for [composition](hackage.haskell.org/package/composition) or [composition-extra](hackage.haskell.org/package/composition-extra), exporting everything in one module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = (pkgs.lib).optional (!flags.cross) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")));
        buildable = true;
        };
      };
    }