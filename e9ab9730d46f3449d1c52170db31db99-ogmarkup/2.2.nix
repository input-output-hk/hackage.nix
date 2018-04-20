{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ogmarkup";
          version = "2.2";
        };
        license = "MIT";
        copyright = "2016 Ogma Project";
        maintainer = "contact@thomasletan.fr";
        author = "Thomas Letan, Laurent Georget";
        homepage = "http://github.com/ogma-project/ogmarkup";
        url = "";
        synopsis = "A lightweight markup language for story writers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ogmarkup = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
        tests = {
          ogmadown-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.ogmarkup
              hsPkgs.parsec
              hsPkgs.shakespeare
              hsPkgs.text
            ];
          };
        };
      };
    }