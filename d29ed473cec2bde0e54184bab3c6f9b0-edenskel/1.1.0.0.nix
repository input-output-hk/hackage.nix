{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      par = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "edenskel";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eden@mathematik.uni-marburg.de";
        author = "";
        homepage = "http://www.mathematik.uni-marburg.de/~eden";
        url = "";
        synopsis = "Semi-explicit parallel programming skeleton library";
        description = "This package provides a skeleton library for semi-explicit parallel programming with Eden.\nEden and the skeleton library depend on GHC, and should normally use a GHC extension to support parallel execution using message passing.\nThis modified GHC-Eden compiler is available from\n<http://www.mathematik.uni-marburg.de/~eden>.\nWhen built using a standard GHC, this package will use a\nthreaded simulation of Eden.\nThe Eden homepage     <http://www.mathematik.uni-marburg.de/~eden>\nprovides more documentation and a tutorial.";
        buildType = "Configure";
      };
      components = {
        "edenskel" = {
          depends  = [
            hsPkgs.base
            hsPkgs.edenmodules
            hsPkgs.parallel
          ];
        };
      };
    }