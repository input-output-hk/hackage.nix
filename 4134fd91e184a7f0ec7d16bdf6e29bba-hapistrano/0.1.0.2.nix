{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hapistrano";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "2014 Stack Builders Inc.";
        maintainer = "justin@stackbuilders.com";
        author = "Justin Leitgeb";
        homepage = "";
        url = "";
        synopsis = "A deployment library for Haskell applications";
        description = "Hapistrano makes it easy to reliably deploy Haskell\napplications.";
        buildType = "Simple";
      };
      components = {
        hapistrano = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.either
            hsPkgs.transformers
            hsPkgs.lens
            hsPkgs.filepath
            hsPkgs.either
          ];
        };
        exes = {
          hap = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.either
              hsPkgs.transformers
              hsPkgs.lens
              hsPkgs.filepath
              hsPkgs.either
            ];
          };
        };
      };
    }