{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "definitive-reactive";
          version = "1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "marc.coiffier@gmail.com";
        author = "Marc Coiffier";
        homepage = "http://coiffier.net/projects/definitive-framework.html";
        url = "";
        synopsis = "A simple Reactive library.";
        description = "";
        buildType = "Simple";
      };
      components = {
        definitive-reactive = {
          depends  = [
            hsPkgs.base
            hsPkgs.definitive-base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.clock
          ];
        };
      };
    }