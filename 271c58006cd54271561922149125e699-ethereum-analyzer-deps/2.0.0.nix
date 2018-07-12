{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ethereum-analyzer-deps";
          version = "2.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "k_@berkeley.edu";
        author = "Jamshid";
        homepage = "";
        url = "";
        synopsis = "Stripped dependencies of ethereum-analyzer.";
        description = "Stripped dependencies of ethereum-analyzer.";
        buildType = "Simple";
      };
      components = {
        "ethereum-analyzer-deps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.ansi-wl-pprint
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.fast-logger
            hsPkgs.global-lock
            hsPkgs.monad-logger
            hsPkgs.split
            hsPkgs.text
          ];
        };
      };
    }