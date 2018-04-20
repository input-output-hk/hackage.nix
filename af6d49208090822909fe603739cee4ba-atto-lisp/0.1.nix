{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "atto-lisp";
          version = "0.1";
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
        atto-lisp = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.text
          ];
        };
      };
    }