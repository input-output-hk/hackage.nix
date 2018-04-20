{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mustache";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Justus Adam";
        maintainer = "dev@justus.science";
        author = "Justus Adam";
        homepage = "https://github.com/JustusAdam/mustache";
        url = "";
        synopsis = "A mustache template parser library.";
        description = "Allows parsing and rendering template files with mustache markup. See the\nmustache <http://mustache.github.io/mustache.5.html language reference>.\n\nImplements the mustache spec version 1.1.3.\n\n/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.";
        buildType = "Simple";
      };
      components = {
        mustache = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.tagsoup
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.scientific
            hsPkgs.base-unicode-symbols
            hsPkgs.ja-base-extra
            hsPkgs.containers
          ];
        };
        exes = {
          haskell-mustache = {
            depends  = [
              hsPkgs.base
              hsPkgs.mustache
              hsPkgs.bytestring
              hsPkgs.yaml
              hsPkgs.aeson
              hsPkgs.cmdargs
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.base-unicode-symbols
            ];
          };
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.mustache
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.base-unicode-symbols
            ];
          };
          language-specifications = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.mustache
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.base-unicode-symbols
            ];
          };
        };
      };
    }