{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kawa";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomas.feron@redspline.com";
        author = "Thomas Feron";
        homepage = "https://github.com/thoferon/kawa#readme";
        url = "";
        synopsis = "Key-value store in single files.";
        description = "Simple command-line tool to manage some key-value store in a single file.";
        buildType = "Simple";
      };
      components = {
        "kawa" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.hashable
          ];
        };
        exes = {
          "kawa" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.directory
              hsPkgs.kawa
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          "unit-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.kawa
              hsPkgs.hedgehog
            ];
          };
        };
      };
    }