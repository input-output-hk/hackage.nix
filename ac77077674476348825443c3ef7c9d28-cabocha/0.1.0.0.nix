{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cabocha";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Miyazawa Akira <pecorarista@gmail.com>";
        author = "Miyazawa Akira";
        homepage = "http://github.com/pecorarista/hscabocha";
        url = "";
        synopsis = "";
        description = "A Haskell binding to CaboCha <http://taku910.github.io/cabocha>";
        buildType = "Simple";
      };
      components = {
        "cabocha" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
          libs = [ pkgs.cabocha ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cabocha
              hsPkgs.text-format
            ];
          };
        };
      };
    }