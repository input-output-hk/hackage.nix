{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambdabot-core";
          version = "5.1.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "Don Stewart";
        homepage = "https://wiki.haskell.org/Lambdabot";
        url = "";
        synopsis = "Lambdabot core functionality";
        description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nManage plugins, network connections, configurations\nand much more.";
        buildType = "Simple";
      };
      components = {
        lambdabot-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dependent-map
            hsPkgs.dependent-sum
            hsPkgs.dependent-sum-template
            hsPkgs.directory
            hsPkgs.edit-distance
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.hslogger
            hsPkgs.HTTP
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.prim-uniq
            hsPkgs.random
            hsPkgs.random-fu
            hsPkgs.random-source
            hsPkgs.regex-tdfa
            hsPkgs.SafeSemaphore
            hsPkgs.split
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.utf8-string
            hsPkgs.zlib
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }