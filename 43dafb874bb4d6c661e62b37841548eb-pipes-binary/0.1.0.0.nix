{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-binary";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Renzo Carbonara 2013";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/pipes-binary";
        url = "";
        synopsis = "Encode and decode binary streams using the pipes and binary libraries.";
        description = "Encode and decode binary streams using the @Pipes@ and @binary@ libraries.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
        buildType = "Simple";
      };
      components = {
        "pipes-binary" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.pipes
            hsPkgs.pipes-parse
          ];
        };
      };
    }