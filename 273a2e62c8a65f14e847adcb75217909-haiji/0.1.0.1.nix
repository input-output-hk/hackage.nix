{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haiji";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014, Noriyuki OHKAWA";
        maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A typed template engine, subset of jinja2";
        description = "Haiji is a template engine which is subset of jinja2.\nThis is designed to free from the unintended rendering result\nby strictly typed variable interpolation.";
        buildType = "Simple";
      };
      components = {
        "haiji" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.template-haskell
            hsPkgs.tagged
            hsPkgs.aeson
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.scientific
            hsPkgs.data-default
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.haiji
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.process-extras
              hsPkgs.data-default
            ];
          };
        };
      };
    }