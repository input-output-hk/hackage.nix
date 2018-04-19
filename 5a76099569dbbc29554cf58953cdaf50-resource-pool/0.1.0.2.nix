{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "resource-pool";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
        author = "Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "http://github.com/mailrank/pool";
        url = "";
        synopsis = "A high-performance striped resource pooling implementation";
        description = "A high-performance striped pooling abstraction for managing\nflexibly-sized collections of resources such as database\nconnections.";
        buildType = "Simple";
      };
      components = {
        resource-pool = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.vector
          ];
        };
      };
    }