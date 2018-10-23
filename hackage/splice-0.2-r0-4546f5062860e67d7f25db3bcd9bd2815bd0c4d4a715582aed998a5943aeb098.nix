{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "splice";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://fusion.corsis.eu";
      url = "";
      synopsis = "Socket to Socket Data Splicing";
      description = "A library that implements efficient socket to socket\ndata transfer loops for proxy servers.\n\nOn Linux, it uses the zero-copy splice() system call:\n<http://kerneltrap.org/node/6505>.\n\nOn all other operating systems, it currently falls back\nto a portable Haskell implementation that allocates a\nconstant-sized memory buffer before it enters an inner\nloop which then uses hGetBufSome and hPutBuf; this avoids\nlots of tiny allocations as would otherwise be caused by\nrecv and sendAll functions from Network.Socket.ByteString.\n\nThis work is funded by Corsis Research and used in:\n\nPortFusion ]-[ayabusa – German\nresearch project for building the simplest\nhigh-performance distributed reverse / forward proxy.\n\n<https://sourceforge.net/p/portfusion/wiki/RoadMap/>";
      buildType = "Simple";
    };
    components = {
      "splice" = {
        depends  = if system.isLinux && !flags.portable
          then [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.unix)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.network)
          ];
      };
    };
  }