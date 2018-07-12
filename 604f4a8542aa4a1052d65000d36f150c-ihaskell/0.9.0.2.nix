{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      binpkgdb = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell";
          version = "0.9.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "A Haskell backend kernel for the IPython project.";
        description = "IHaskell is a Haskell backend kernel for the IPython project. This allows using Haskell via\na console or notebook interface. Additional packages may be installed to provide richer data visualizations.";
        buildType = "Simple";
      };
      components = {
        "ihaskell" = {
          depends  = ([
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-parser
            hsPkgs.ghc-paths
            hsPkgs.haskeline
            hsPkgs.hlint
            hsPkgs.haskell-src-exts
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.random
            hsPkgs.shelly
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.strict
            hsPkgs.system-argv0
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.uuid
            hsPkgs.vector
            hsPkgs.ipython-kernel
          ] ++ pkgs.lib.optional _flags.binpkgdb hsPkgs.bin-package-db) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0") hsPkgs.ghc-boot;
        };
        exes = {
          "ihaskell" = {
            depends  = [
              hsPkgs.ihaskell
              hsPkgs.base
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.ghc
              hsPkgs.process
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.strict
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.ipython-kernel
            ] ++ pkgs.lib.optional _flags.binpkgdb hsPkgs.bin-package-db;
          };
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ihaskell
              hsPkgs.here
              hsPkgs.hspec
              hsPkgs.hspec-contrib
              hsPkgs.HUnit
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.text
              hsPkgs.shelly
              hsPkgs.setenv
            ] ++ pkgs.lib.optional _flags.binpkgdb hsPkgs.bin-package-db;
          };
        };
      };
    }