{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smerdyakov";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/jkarni/smerdyakov#README.md";
        url = "";
        synopsis = "";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        smerdyakov = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.exceptions
            hsPkgs.free
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.exceptions
              hsPkgs.free
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.yaml
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.exceptions
              hsPkgs.free
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.smerdyakov
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }