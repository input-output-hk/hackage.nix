{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cabal2arch";
        version = "0.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cabal2arch";
      url = "";
      synopsis = "Create Arch Linux packages from Cabal packages";
      description = "Create Arch Linux packages from Cabal packages";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2arch" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.pureMD5)
            (hsPkgs.filepath)
            (hsPkgs.archlinux)
          ];
        };
      };
    };
  }