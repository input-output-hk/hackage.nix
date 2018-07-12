{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atto-lisp";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Schilling <nominolo@googlemail.com>";
        author = "Thomas Schilling <nominolo@googlemail.com>";
        homepage = "http://github.com/nominolo/atto-lisp";
        url = "";
        synopsis = "Efficient parsing and serialisation of S-Expressions.";
        description = "Efficient parsing and serialisation of S-Expressions.";
        buildType = "Simple";
      };
      components = {
        "atto-lisp" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.text
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.atto-lisp
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }