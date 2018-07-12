{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "NXTDSL";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@agrafix.net>";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/legoDSL";
        url = "";
        synopsis = "Generate NXC Code from DSL";
        description = "Typesafe code generation for the LEGO-NXT";
        buildType = "Simple";
      };
      components = {
        "NXTDSL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.unordered-containers
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.uu-parsinglib
          ];
        };
        exes = {
          "ExampleRun" = {};
          "ExampleVM" = {};
          "Parser" = {};
        };
      };
    }