{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attoparsec-uri";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/attoparsec-uri#readme";
        url = "";
        synopsis = "URI parser / printer using attoparsec";
        description = "";
        buildType = "Simple";
      };
      components = {
        "attoparsec-uri" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.attoparsec-ip
            hsPkgs.bytedump
            hsPkgs.ip
            hsPkgs.strict
            hsPkgs.text
            hsPkgs.vector
          ];
        };
      };
    }