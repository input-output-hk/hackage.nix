{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "air-extra";
          version = "2015.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/air-extra";
        url = "";
        synopsis = "air-extra";
        description = "An alternative Haskell Prelude library, extra helpers";
        buildType = "Simple";
      };
      components = {
        air-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.parallel
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.regexpr
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.air
            hsPkgs.text
          ];
        };
      };
    }