{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ml-w";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Francesco Mazzoli <f@mazzo.li>";
      author = "Francesco Mazzoli <f@mazzo.li>";
      homepage = "";
      url = "";
      synopsis = "Minimal ML language to to demonstrate the W type\ninfererence algorithm.";
      description = "\nThis package implements a minimal ML-like language to demonstrate how the W\nalgorithm works.\n\nThe 'ML' module contains the definition of the language in the form of an\nHaskell data type, plus functions to parse files and pretty print the\ndatatype.\n\nThe 'TypeInfer' module contains the W algorithm itself.\n\nThe 'Main' module contains a program that parses and typechecks programs\nreading from standard input.\n\nThe library and executable is compatible with GHC and Hugs (to use Hugs\nwith cabal use the flag @--hugs@).";
      buildType = "Simple";
    };
    components = {
      "ml-w" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.pretty);
      };
      exes = {
        "ML" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.pretty);
        };
      };
    };
  }