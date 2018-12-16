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
      specVersion = "1.8";
      identifier = {
        name = "binary-derive";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Jared Hance <jaredhance@gmail.com>";
      author = "Jared Hance";
      homepage = "";
      url = "";
      synopsis = "Automatic deriving of Binary using GHC.Generics";
      description = "This package provides deriveGet and derivePut, respectively, which\neach can be used to quickly create an instance of Binary for any time which\nimplements Generic. Naturally, this can be used with -XDeriveGeneric to not     have to write any boilerplate code. This differs from binary-generic which\nrelies on the Data class instead and doesn't seem to have quite the same\nimplementation philosophy. Once Ghc 7.2 is stable, this could be combined\ninto the binary package to provide a sensible default for the Binary class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }