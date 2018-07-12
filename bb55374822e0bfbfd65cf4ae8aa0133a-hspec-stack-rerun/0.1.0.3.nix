{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-stack-rerun";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "AllRightsReserved";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "https://github.com/mwotton/hspec-stack-rerun#readme";
        url = "";
        synopsis = "Simple project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hspec-stack-rerun" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.strict
            hsPkgs.directory
            hsPkgs.safe
          ];
        };
      };
    }