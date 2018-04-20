{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hesh";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "2015 Chris Forno";
        maintainer = "jekor@jekor.com";
        author = "Chris Forno";
        homepage = "https://github.com/jekor/hesh";
        url = "";
        synopsis = "the Haskell Extensible Shell: Haskell for Bash-style scripts";
        description = "Hesh makes writing scripts in Haskell easier by providing Bash-style syntax for running commands, implicit module imports, and automatic dependency inference and Cabal file generation. It allows shebang execution of scripts.";
        buildType = "Simple";
      };
      components = {
        hesh = {
          depends  = [
            hsPkgs.base
            hsPkgs.filemanip
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          hesh = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.cartel
              hsPkgs.cmdtheline
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hackage-db
              hsPkgs.haskell-src-exts
              hsPkgs.hesh
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.text
              hsPkgs.time
              hsPkgs.uniplate
            ];
          };
        };
      };
    }