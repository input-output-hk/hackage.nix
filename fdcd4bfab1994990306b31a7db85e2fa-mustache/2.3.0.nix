{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mustache";
          version = "2.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015,\n2016 Justus Adam";
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
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.either
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.directory
            hsPkgs.scientific
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.th-lift
          ];
        };
        exes = {
          haskell-mustache = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.mustache
              hsPkgs.yaml
              hsPkgs.cmdargs
            ];
          };
        };
        tests = {
          language-specifications = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.mustache
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.base-unicode-symbols
              hsPkgs.wreq
              hsPkgs.zlib
              hsPkgs.tar
              hsPkgs.lens
            ];
          };
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.mustache
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.directory
            ];
          };
        };
      };
    }