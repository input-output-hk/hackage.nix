{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      developer = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "resource-pool-catchio";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Jurriën Stutterheim <j.stutterheim@me.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://github.com/norm2782/pool";
      url = "";
      synopsis = "Fork of resource-pool, with a MonadCatchIO constraint";
      description = "This is a fork of Bryan O'Sullivan's resource-pool package. The only\ndifference is that it relies on MonadCatchIO, rather than MonadControlIO. If\nyou do not strictly need the MonadCatchIO support, please use Bryan's\noriginal package instead.\nA high-performance striped pooling abstraction for managing\nflexibly-sized collections of resources such as database\nconnections.";
      buildType = "Simple";
    };
    components = {
      "resource-pool-catchio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
    };
  }