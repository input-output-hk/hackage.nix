{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "monad-stlike-io";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Taru Karttunen <taruti@taruti.net>";
        maintainer = "taruti@taruti.net";
        author = "Taru Karttunen";
        homepage = "";
        url = "";
        synopsis = "ST-like monad capturing variables to regions and supporting IO.";
        description = "ST-like monad capturing variables to regions and supporting IO.";
        buildType = "Simple";
      };
      components = {
        "monad-stlike-io" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.transformers
          ];
        };
      };
    }