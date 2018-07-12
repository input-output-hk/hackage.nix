{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fortytwo";
          version = "0.0.4";
        };
        license = "MIT";
        copyright = "Gianlua Guarini";
        maintainer = "gianluca.guarini@gmail.com";
        author = "Gianluca Guarini";
        homepage = "https://github.com/gianlucaguarini/fortytwo#readme";
        url = "";
        synopsis = "Interactive terminal prompt";
        description = "List of Prompt helpers to pimp the UIs of your haskell programs";
        buildType = "Simple";
      };
      components = {
        "fortytwo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.ansi-terminal
          ];
        };
        exes = {
          "examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fortytwo
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.fortytwo
              hsPkgs.base
              hsPkgs.process
              hsPkgs.async
              hsPkgs.hspec
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.fortytwo
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }