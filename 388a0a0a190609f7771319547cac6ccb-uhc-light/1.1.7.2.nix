{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "uhc-light";
          version = "1.1.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
        maintainer = "uhc-developers@lists.science.uu.nl";
        author = "Atze Dijkstra";
        homepage = "https://github.com/UU-ComputerScience/uhc";
        url = "";
        synopsis = "Part of UHC packaged as cabal/hackage installable library";
        description = "A 'light' variant of UHC including only an API and an executable for compiling to Core representation. This version is just to test the infrastructure. Later versions will provide a fleshing out of the API etc..";
        buildType = "Simple";
      };
      components = {
        "uhc-light" = {
          depends  = [
            hsPkgs.fgl
            hsPkgs.hashable
            hsPkgs.uhc-util
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.syb
            hsPkgs.uulib
            hsPkgs.network
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.process
            hsPkgs.primitive
            hsPkgs.binary
            hsPkgs.syb
            hsPkgs.bytestring
            hsPkgs.uulib
            hsPkgs.old-locale
          ];
        };
        exes = {
          "uhcl" = {
            depends  = [
              hsPkgs.uhc-light
              hsPkgs.fgl
              hsPkgs.hashable
              hsPkgs.uhc-util
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.syb
              hsPkgs.uulib
              hsPkgs.network
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.process
              hsPkgs.primitive
              hsPkgs.binary
              hsPkgs.syb
              hsPkgs.bytestring
              hsPkgs.uulib
              hsPkgs.old-locale
            ];
          };
        };
      };
    }