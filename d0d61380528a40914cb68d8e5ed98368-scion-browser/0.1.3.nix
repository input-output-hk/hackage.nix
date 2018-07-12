{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "scion-browser";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alejandro Serrano <trupill@gmail.com>";
        author = "Alejandro Serrano <trupill@gmail.com>";
        homepage = "http://github.com/serras/scion-class-browser";
        url = "";
        synopsis = "Command-line interface for browsing and searching packages documentation";
        description = "Scion Browser aims to be a command-line interface for getting information about installed Haskell packages, that could be later used by development environments. It also provides integration with Hoogle. By now, it has been integrated in EclipseFP.";
        buildType = "Simple";
      };
      components = {
        "scion-browser" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.derive
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.cereal
            hsPkgs.Cabal
            hsPkgs.haskell-src-exts
            hsPkgs.process
            hsPkgs.tar
            hsPkgs.zlib
            hsPkgs.HTTP
            hsPkgs.deepseq
            hsPkgs.aeson
            hsPkgs.parallel-io
            hsPkgs.utf8-string
            hsPkgs.ghc-paths
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if compiler.isGhc && compiler.version.ge "7.0"
            then [
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.ghc
            ]
            else [
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
            ]);
        };
        exes = {
          "scion-browser" = {
            depends  = ([
              hsPkgs.haskeline
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.derive
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.cereal
              hsPkgs.Cabal
              hsPkgs.haskell-src-exts
              hsPkgs.process
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.HTTP
              hsPkgs.deepseq
              hsPkgs.aeson
              hsPkgs.parallel-io
              hsPkgs.utf8-string
              hsPkgs.ghc-paths
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if compiler.isGhc && compiler.version.ge "7.0"
              then [
                hsPkgs.containers
                hsPkgs.directory
                hsPkgs.filepath
                hsPkgs.bytestring
                hsPkgs.ghc
              ]
              else [
                hsPkgs.containers
                hsPkgs.directory
                hsPkgs.filepath
                hsPkgs.ghc
              ]);
          };
        };
      };
    }