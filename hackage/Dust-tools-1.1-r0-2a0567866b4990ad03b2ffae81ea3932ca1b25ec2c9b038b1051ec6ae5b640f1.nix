{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Dust-tools"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "brandon@ischool.utexas.edu";
      author = "Brandon Wiley";
      homepage = "";
      url = "";
      synopsis = "Network filtering exploration tools";
      description = "A set of tools for exploring network filtering";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shaper-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            (hsPkgs.network)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.random-extras)
            (hsPkgs.random-source)
            (hsPkgs.random-fu)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.split)
            ];
          };
        "shaper-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            (hsPkgs.network)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.random-extras)
            (hsPkgs.random-source)
            (hsPkgs.random-fu)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.split)
            ];
          };
        "replay-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            (hsPkgs.network)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.random-extras)
            (hsPkgs.random-source)
            (hsPkgs.random-fu)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.split)
            ];
          };
        "replay-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            (hsPkgs.network)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.random-extras)
            (hsPkgs.random-source)
            (hsPkgs.random-fu)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.split)
            ];
          };
        "compile" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Dust)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            (hsPkgs.network)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.random-extras)
            (hsPkgs.random-source)
            (hsPkgs.random-fu)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.csv)
            ];
          };
        };
      };
    }