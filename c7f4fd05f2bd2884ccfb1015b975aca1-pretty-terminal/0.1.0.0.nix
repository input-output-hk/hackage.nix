{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pretty-terminal";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Logan McPhail";
        maintainer = "logan.airnomad@gmail.com";
        author = "Logan McPhail";
        homepage = "https://github.com/loganmac/pretty-terminal#readme";
        url = "";
        synopsis = "Styling and coloring terminal output with ANSI escape sequences.";
        description = "Please see the README on Github at <https://github.com/loganmac/pretty-terminal#readme>";
        buildType = "Simple";
      };
      components = {
        "pretty-terminal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty-terminal
              hsPkgs.text
            ];
          };
        };
      };
    }