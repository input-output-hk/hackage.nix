{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "edenmodules";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eden@mathematik.uni-marburg.de";
        author = "";
        homepage = "http://www.mathematik.uni-marburg.de/~eden";
        url = "";
        synopsis = "Semi-explicit parallel programming library";
        description = "This package provides a library for semi-explicit parallel programming\nwith Eden. Eden extends Haskell with a small set of syntactic constructs\nfor explicit process specification and creation. While providing enough\ncontrol to implement parallel algorithms efficiently, it frees the\nprogrammer from the tedious task of managing low-level details by\nintroducing automatic communication (via head-strict lazy lists),\nsynchronisation, and process handling.\nThe Eden-modules depend on GHC, and should normally use a GHC extension\nto support parallel execution using message passing.\nThis modified GHC-Eden compiler is available from\n<http://www.mathematik.uni-marburg.de/~eden>.\nWhen built using a standard GHC, this package will produce a\nthreaded simulation of Eden.\nThe Eden homepage     <http://www.mathematik.uni-marburg.de/~eden>\nprovides more documentation and a tutorial.";
        buildType = "Configure";
      };
      components = {
        "edenmodules" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.parallel
          ];
        };
      };
    }