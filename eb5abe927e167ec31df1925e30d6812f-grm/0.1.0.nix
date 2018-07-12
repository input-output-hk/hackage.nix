{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "grm";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Brett Letner 2011-2012";
        maintainer = "Brett Letner <brettletner@gmail.com>";
        author = "Brett Letner <brettletner@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "grm grammar converter";
        description = "Grm takes a grammar specification and generates Haskell bindings.  Given a grammar the tool produces an abstract syntax implementation, a Happy parser generator file, and a pretty-printer.";
        buildType = "Simple";
      };
      components = {
        "grm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wl-pprint
            hsPkgs.process
            hsPkgs.syb
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
        exes = {
          "grm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.wl-pprint
              hsPkgs.filepath
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.Cabal
              hsPkgs.process
              hsPkgs.syb
            ];
            build-tools = [
              hsPkgs.buildPackages.happy
            ];
          };
        };
      };
    }