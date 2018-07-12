{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "definitive-parser";
          version = "1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "marc.coiffier@gmail.com";
        author = "Marc Coiffier";
        homepage = "http://coiffier.net/projects/definitive-framework.html";
        url = "";
        synopsis = "A parser combinator library for the Definitive framework";
        description = "";
        buildType = "Simple";
      };
      components = {
        "definitive-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.definitive-base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.cpu
            hsPkgs.utf8-string
          ];
        };
      };
    }