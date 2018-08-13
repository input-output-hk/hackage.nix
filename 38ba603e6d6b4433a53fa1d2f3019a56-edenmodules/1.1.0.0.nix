{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "edenmodules";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eden@mathematik.uni-marburg.de";
      author = "";
      homepage = "http://www.mathematik.uni-marburg.de/~eden";
      url = "";
      synopsis = "Semi-explicit parallel programming library";
      description = "This package provides a library for semi-explicit parallel programming\nwith Eden. Eden extends Haskell with a small set of syntactic constructs\nfor explicit process specification and creation. While providing enough\ncontrol to implement parallel algorithms efficiently, it frees the\nprogrammer from the tedious task of managing low-level details by\nintroducing automatic communication (via head-strict lazy lists),\nsynchronisation, and process handling.\nThe Eden-modules depend on GHC. Using standard GHC, you will get a\nthreaded simulation of Eden. Use the patched GHC-Eden compiler from\n<http://www.mathematik.uni-marburg.de/~eden>\nfor a parallel build. See our homepage for more documentation and a\ntutorial.";
      buildType = "Configure";
    };
    components = {
      "edenmodules" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
        ];
      };
    };
  }