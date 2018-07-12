{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-utils";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/text-utils#readme";
        url = "";
        synopsis = "Various text utilities";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "text-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.HTF
            ];
          };
        };
      };
    }