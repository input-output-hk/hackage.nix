{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libxls";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "xuminhui189@gmail.com";
        author = "uuhan";
        homepage = "";
        url = "";
        synopsis = "Bindings to libxls";
        description = "Read Data From xls file";
        buildType = "Custom";
      };
      components = {
        "libxls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }