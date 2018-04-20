{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quipper";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leonardo.taglialegne@gmail.com";
        author = "Applied Communication Sciences";
        homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
        url = "";
        synopsis = "Quipper is an embedded, scalable functional programming language for quantum computing.";
        description = "";
        buildType = "Simple";
      };
      components = {
        quipper = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.unix
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.easyrender
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.primes
          ];
        };
      };
    }