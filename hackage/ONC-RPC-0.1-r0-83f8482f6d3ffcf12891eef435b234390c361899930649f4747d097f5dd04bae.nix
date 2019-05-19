{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "ONC-RPC"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "2017";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "ONC RPC (aka Sun RPC) and XDR library";
      description = "Tools and library for writing ONC (Sun) RPC clients and servers.  Provides equivalent functionality to rpcgen and librpcsvc, except in pure Haskell.  The hsrpcgen tool (and Cabal preprocessor library) allows .x XDR files to generate Haskell protocol descriptors.  The library provides a client interface to use these descriptions to make RPC calls.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cereal or (pkgs.buildPackages.cereal))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.haskell-src-exts or (pkgs.buildPackages.haskell-src-exts))
        (hsPkgs.buildPackages.parsec or (pkgs.buildPackages.parsec))
        (hsPkgs.buildPackages.vector or (pkgs.buildPackages.vector))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      exes = {
        "hsrpcgen" = {
          depends = [ (hsPkgs.base) (hsPkgs.filepath) (hsPkgs.ONC-RPC) ];
          };
        };
      };
    }