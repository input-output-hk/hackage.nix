{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clingo";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2017 Paul Ogris";
      maintainer = "paul@tsahyt.com";
      author = "Paul Ogris";
      homepage = "https://github.com/tsahyt/clingo-haskell#readme";
      url = "";
      synopsis = "Haskell bindings to the Clingo ASP solver";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.deepseq)
          (hsPkgs.StateVar)
          (hsPkgs.hashable)
        ];
        libs = [ (pkgs."clingo") ];
      };
      exes = {
        "version" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
          ];
        };
        "dot-propagator" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "control" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "configuration" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
            (hsPkgs.StateVar)
          ];
        };
        "theory-atoms" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "symbolic-atoms" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "ast" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "backend" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "model" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
          ];
        };
        "solve-async" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
            (hsPkgs.monad-loops)
            (hsPkgs.MonadRandom)
          ];
        };
        "statistics" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.StateVar)
          ];
        };
        "propagator" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clingo)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }