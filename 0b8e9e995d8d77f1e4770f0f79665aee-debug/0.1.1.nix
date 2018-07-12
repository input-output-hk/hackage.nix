{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "debug";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2017-2018";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/debug";
        url = "";
        synopsis = "Simple trace-based debugger";
        description = "An easy to use debugger for viewing function calls and intermediate variables.\nTo use, annotate the function under test, run the code, and view the generated web page.\nFull usage instructions are at \"Debug\".";
        buildType = "Simple";
      };
      components = {
        "debug" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.Hoed
            hsPkgs.libgraph
            hsPkgs.extra
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.template-haskell
            hsPkgs.open-browser
            hsPkgs.text
            hsPkgs.uniplate
            hsPkgs.unordered-containers
            hsPkgs.prettyprinter
            hsPkgs.prettyprinter-compat-ansi-wl-pprint
            hsPkgs.vector
          ];
        };
        exes = {
          "debug-pp" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          "debug-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.debug
            ];
          };
        };
      };
    }