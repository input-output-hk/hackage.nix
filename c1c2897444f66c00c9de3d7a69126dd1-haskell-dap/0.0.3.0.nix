{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-dap";
          version = "0.0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017-2018 phoityne_hs";
        maintainer = "phoityne.hs@gmail.com";
        author = "phoityne_hs";
        homepage = "https://github.com/phoityne/haskell-dap";
        url = "";
        synopsis = "haskell-dap is a GHCi having DAP interface.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        haskell-dap = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          haskell-dap = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.ghci
              hsPkgs.ghc-paths
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.haskeline
              hsPkgs.array
              hsPkgs.process
              hsPkgs.ghc-boot
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.haskell-dap
              hsPkgs.text
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }