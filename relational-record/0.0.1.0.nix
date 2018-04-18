{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "relational-record";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "Meta package of Relational Record";
        description = "Meta package to install Relational Record quickly";
        buildType = "Simple";
      };
      components = {
        relational-record = {
          depends  = [
            hsPkgs.relational-query-HDBC
          ];
        };
      };
    }