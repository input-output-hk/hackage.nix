{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "edis";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Ting-Yan Lai";
        maintainer = "banacorn@gmail.com";
        author = "Ting-Yan Lai";
        homepage = "";
        url = "";
        synopsis = "Statically typechecked client for Redis";
        description = "This library is a Haskell client for the Redis datastore built on top of\nHedis, with stronger type-level guarantees.\n\nFor detailed documentation, see the \"Database.Edis\" module.\n";
        buildType = "Simple";
      };
      components = {
        edis = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hedis
            hsPkgs.cereal
          ];
        };
      };
    }