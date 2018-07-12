{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ycextra";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2008, Dmitry Golubovsky and The Yhc Team";
        maintainer = "golubovsky@gmail.com";
        author = "Dmitry Golubovsky";
        homepage = "http://www.haskell.org/haskellwiki/Yhc";
        url = "";
        synopsis = "Additional utilities to work with Yhc Core.";
        description = "Additional utilities for Yhc Core developed as by-products\nof front- and back-ends, also for possible inclusion\nto the Yhc Core package.";
        buildType = "Simple";
      };
      components = {
        "ycextra" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.uniplate
            hsPkgs.yhccore
            hsPkgs.csv
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
              hsPkgs.mtl
            ]);
        };
      };
    }