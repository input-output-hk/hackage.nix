{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "c2hs";
          version = "0.15.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) [1999..2007] Manuel M T Chakravarty";
        maintainer = "chak@cse.unsw.edu.au, duncan@haskell.org";
        author = "Manuel M T Chakravarty";
        homepage = "http://www.cse.unsw.edu.au/~chak/haskell/c2hs/";
        url = "";
        synopsis = "C->Haskell Interface Generator";
        description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries.  It extracts C interface information from vanilla header\nfiles and generates marshaling and signature code in Haskell.";
        buildType = "Custom";
      };
      components = {
        c2hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
          ];
          build-tools = [
            hsPkgs.happy
            hsPkgs.alex
          ];
        };
        exes = {
          c2hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
            ];
          };
        };
      };
    }