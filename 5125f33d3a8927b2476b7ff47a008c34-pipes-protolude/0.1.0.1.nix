{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-protolude";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Kyle McKean";
        maintainer = "mckean.kylej@gmail.com";
        author = "Kyle McKean";
        homepage = "https://github.com/mckeankylej/pipes-protolude#readme";
        url = "";
        synopsis = "Alternate Prelude for the pipes ecosystem";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pipes-protolude = {
          depends  = [
            hsPkgs.base
            hsPkgs.text-show
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.async
            hsPkgs.foldl
            hsPkgs.free
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
            hsPkgs.pipes-extras
            hsPkgs.pipes-group
            hsPkgs.pipes-safe
            hsPkgs.exceptions
            hsPkgs.pipes-parse
            hsPkgs.pipes-text
          ];
        };
        exes = {
          pipes-protolude-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-protolude
            ];
          };
        };
        tests = {
          pipes-protolude-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-protolude
            ];
          };
        };
      };
    }