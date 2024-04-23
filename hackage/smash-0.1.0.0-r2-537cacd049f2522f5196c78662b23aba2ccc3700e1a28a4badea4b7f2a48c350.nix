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
    flags = { ghc-flags = false; perf-flags = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "smash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Emily Pillmore <emilypi@cohomolo.gy>";
      maintainer = "emilypi@cohomolo.gy";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/smash";
      url = "";
      synopsis = "Combinators for Maybe types";
      description = "This package provides the calculus for pointed types, including the\npointed product, 'Can', the pointed coproduct, 'Wedge', and the smash product.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ] ++ pkgs.lib.optional (flags.ghc-flags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
        build-tools = pkgs.lib.optional (flags.ghc-flags) (hsPkgs.buildPackages.hsinspect.components.exes.hsinspect or (pkgs.buildPackages.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
        buildable = true;
      };
      tests = {
        "tasty" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }