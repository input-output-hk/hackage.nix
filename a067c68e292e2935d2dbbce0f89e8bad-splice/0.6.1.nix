{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      portable = true;
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "splice";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2012 Cetin Sert";
        maintainer = "Cetin Sert <fusion@corsis.eu>, Corsis Research";
        author = "Cetin Sert <fusion@corsis.eu>, Corsis Research";
        homepage = "http://corsis.github.com/splice/";
        url = "";
        synopsis = "Cross-platform Socket to Socket Data Splicing";
        description = "A library that implements most efficient socket to socket\ndata transfer loops for proxy servers on all operating systems.\n\nOn GNU/Linux, it exports the zero-copy system call @c_splice()@\n(<http://kerneltrap.org/node/6505>) in @System.IO.Splice.Linux@.\n\nOn other operating systems, it only exports a portable Haskell\nimplementation.\n\nA unified sockets API for all operating systems is available in\n@Network.Socket.Splice@.\n\n[Version Scheme]\nMajor-@/R/@-ewrite . New-@/F/@-unctionality . @/I/@-mprovementAndBugFixes . @/P/@-ackagingOnly\n\n* @PackagingOnly@ changes are made for quality assurance reasons.";
        buildType = "Simple";
      };
      components = {
        splice = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ] ++ pkgs.lib.optional (system.isLinux && !_flags.portable) hsPkgs.unix;
        };
      };
    }