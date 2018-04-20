{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-glsl";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thu@hypered.be";
        author = "Vo Minh Thu";
        homepage = "https://github.com/noteed/language-glsl";
        url = "";
        synopsis = "GLSL abstract syntax tree, parser, and pretty-printer";
        description = "The package language-glsl is a Haskell library for the\nrepresentation, the parsing, and the pretty-printing of\nGLSL 1.50 code.";
        buildType = "Simple";
      };
      components = {
        language-glsl = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.parsec
            hsPkgs.prettyclass
          ];
        };
        exes = {
          glsl-pprint = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.language-glsl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.prettyclass
            ];
          };
        };
      };
    }