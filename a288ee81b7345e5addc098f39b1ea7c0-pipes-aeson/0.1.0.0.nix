{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-aeson";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Renzo Carbonara 2013";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/pipes-aeson";
        url = "";
        synopsis = "Encode and decode JSON streams using aeson and pipes.";
        description = "Utilities to encode and decode JSON streams using @aeson@ and @pipes@,\npossibly interleaving other stream effects too.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
        buildType = "Simple";
      };
      components = {
        pipes-aeson = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.pipes
            hsPkgs.pipes-attoparsec
            hsPkgs.pipes-parse
            hsPkgs.bytestring
          ];
        };
      };
    }