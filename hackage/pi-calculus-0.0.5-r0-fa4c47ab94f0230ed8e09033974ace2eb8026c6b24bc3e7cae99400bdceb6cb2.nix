{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pi-calculus"; version = "0.0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "will.derenzymartin@gmail.com";
      author = "Will de Renzy-Martin";
      homepage = "https://github.com/renzyq19/pi-calculus";
      url = "";
      synopsis = "Applied pi-calculus interpreter";
      description = "Phi -  an interpreter for the applied pi-calculus. Very rough around the edges.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.cryptohash)
            (hsPkgs.byteable)
            (hsPkgs.binary)
            (hsPkgs.AES)
            (hsPkgs.RSA)
            ];
          };
        };
      };
    }