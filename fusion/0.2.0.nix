{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fusion";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015, John Wiegley. All Rights Reserved.";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/fusion";
        url = "";
        synopsis = "Effectful streaming library based on shortcut fusion techniques";
        description = "Effectful streaming library based on shortcut fusion techniques";
        buildType = "Simple";
      };
      components = {
        fusion = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.pipes-safe
            hsPkgs.void
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }