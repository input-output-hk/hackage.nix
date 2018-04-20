{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hyper-haskell-server";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Heinrich Apfelmus 2016-2017";
        maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "";
        url = "";
        synopsis = "Server back-end for the HyperHaskell graphical Haskell interpreter";
        description = "This package is part of the /HyperHaskell/ project and provides\nthe server back-end.\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          hyper-haskell-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.exceptions
              hsPkgs.hint
              hsPkgs.hyper
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.scotty
            ];
          };
        };
      };
    }