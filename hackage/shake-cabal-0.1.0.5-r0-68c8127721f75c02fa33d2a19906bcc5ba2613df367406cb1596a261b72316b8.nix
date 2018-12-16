{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "shake-cabal";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Shake library for use with cabal";
      description = "A library for using [shake](http://hackage.haskell.org/package/shake) alongside [cabal](https://www.haskell.org/cabal/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.shake)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.composition-prelude)
          (hsPkgs.filepath)
        ];
      };
    };
  }