{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ghci-dap"; version = "0.0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 phoityne_hs";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne_hs";
      homepage = "https://github.com/phoityne/ghci-dap";
      url = "";
      synopsis = "ghci-dap is a GHCi having DAP interface.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-dap" = {
          depends = ([
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-boot)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghci)
            (hsPkgs.haskeline)
            (hsPkgs.haskell-dap)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4.0") (hsPkgs.unsupported-ghc-version)) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        };
      };
    }