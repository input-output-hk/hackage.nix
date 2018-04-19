{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      noaeson = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yate";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tho.feron@gmail.com";
        author = "Thomas Feron";
        homepage = "";
        url = "";
        synopsis = "Yet Another Template Engine";
        description = "Agnostic pure template engine";
        buildType = "Simple";
      };
      components = {
        yate = {
          depends  = if _flags.noaeson
            then [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.template-haskell
            ]
            else [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.template-haskell
              hsPkgs.aeson
              hsPkgs.scientific
            ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.yate
              hsPkgs.attoparsec
              hsPkgs.mtl
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }