{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      portable = false;
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "splice";
          version = "0.6.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2012 Cetin Sert";
        maintainer = "Cetin Sert <fusion@corsis.eu>";
        author = "Cetin Sert <fusion@corsis.eu>";
        homepage = "http://corsis.github.com/splice/";
        url = "";
        synopsis = "Cross-platform Socket to Socket Data Splicing";
        description = "A library that implements most efficient socket to socket\ndata transfer loops for proxy servers on all operating systems.\n\nOn GNU/Linux, it uses the zero-copy @splice()@ system\ncall (<http://kerneltrap.org/node/6505>) and exports it as\n@c_splice@ in @System.IO.Splice.Linux@.\n\nOn other operating systems, it uses a portable Haskell\nimplementation.\n\n[Legal]\nThis work is undertaken by Corsis Research for the development of\nPortFusion \\]-\\[ayabusa (はやぶさ) (Hayabusa)\n(<https://fusion.corsis.eu>) – German-Japanese joint research\nproject for building the simplest and most concise\nhigh-performance distributed reverse / forward proxy application\npossible on commodity hardware and operating systems.";
        buildType = "Simple";
      };
      components = {
        "splice" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ] ++ pkgs.lib.optional (system.isLinux && !_flags.portable) hsPkgs.unix;
        };
      };
    }