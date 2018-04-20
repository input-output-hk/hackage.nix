{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "air-spec";
          version = "2013.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/air-spec";
        url = "";
        synopsis = "air spec helper";
        description = "wrapper around shouldBe so error message is Unicode aware";
        buildType = "Simple";
      };
      components = {
        air-spec = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.hspec
          ];
        };
      };
    }