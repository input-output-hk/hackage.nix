{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wybor";
          version = "0.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "Matvey Aksenov 2014";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "https://github.com/supki/wybor";
        url = "";
        synopsis = "Console line fuzzy search";
        description = "Console line fuzzy search as a library";
        buildType = "Simple";
      };
      components = {
        "wybor" = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.semigroups
            hsPkgs.terminal-size
            hsPkgs.unix
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.process
              hsPkgs.resourcet
              hsPkgs.semigroups
              hsPkgs.terminal-size
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
            ];
          };
        };
      };
    }