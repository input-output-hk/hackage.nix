{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hex";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Taru Karttunen <taruti@taruti.net>";
        maintainer = "taruti@taruti.net";
        author = "Taru Karttunen";
        homepage = "";
        url = "";
        synopsis = "Convert strings into hexadecimal and back.";
        description = "Convert strings into hexadecimal and back.";
        buildType = "Simple";
      };
      components = {
        hex = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }