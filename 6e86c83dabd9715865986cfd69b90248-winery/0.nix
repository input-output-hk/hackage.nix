{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "winery";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/winery#readme";
        url = "";
        synopsis = "Sustainable serialisation library";
        description = "Please see the README on Github at <https://github.com/fumieval/winery#readme>";
        buildType = "Simple";
      };
      components = {
        "winery" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.prettyprinter
            hsPkgs.prettyprinter-ansi-terminal
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          "winery" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.prettyprinter
              hsPkgs.prettyprinter-ansi-terminal
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.winery
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.prettyprinter
              hsPkgs.prettyprinter-ansi-terminal
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.winery
            ];
          };
        };
      };
    }