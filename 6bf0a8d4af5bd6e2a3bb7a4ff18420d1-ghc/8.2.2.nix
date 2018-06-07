{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      terminfo = true;
      buildable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "ghc";
          version = "8.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "glasgow-haskell-users@haskell.org";
        author = "The GHC Team";
        homepage = "http://www.haskell.org/ghc/";
        url = "";
        synopsis = "The GHC API";
        description = "GHC's functionality can be useful for more things than just\ncompiling Haskell programs. Important use cases are programs\nthat analyse (and perhaps transform) Haskell code. Others\ninclude loading Haskell code dynamically in a GHCi-like manner.\nFor this reason, a lot of GHC's functionality is made available\nthrough this package.";
        buildType = "Simple";
      };
      components = {
        ghc = {
          depends  = (([
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.filepath
            hsPkgs.template-haskell
            hsPkgs.hpc
            hsPkgs.transformers
            hsPkgs.ghc-boot
            hsPkgs.ghc-boot-th
            hsPkgs.ghci
            hsPkgs.hoopl
          ] ++ pkgs.lib.optional (!(system.isLinux && system.isX86_64 && (compiler.isGhc && compiler.version.eq "8.2.2"))) hsPkgs.base) ++ pkgs.lib.optional (!_flags.buildable) hsPkgs.base) ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.unix
            ] ++ pkgs.lib.optional _flags.terminfo hsPkgs.terminfo);
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
      };
    }