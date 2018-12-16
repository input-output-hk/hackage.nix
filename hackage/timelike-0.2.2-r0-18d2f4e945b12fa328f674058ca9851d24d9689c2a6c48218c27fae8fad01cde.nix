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
      specVersion = "1.10";
      identifier = {
        name = "timelike";
        version = "0.2.2";
      };
      license = "LicenseRef-Apache";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "http://hub.darcs.net/esz/timelike";
      url = "";
      synopsis = "Type classes for types representing time";
      description = "This library defines a set of type classes for generic\ntime arithmetic.  It supports universal time types like @UTCTime@\nfrom the <http://hackage.haskell.org/package/time time library> as\nwell as physical time types like the ones from\n<http://hackage.haskell.org/package/clock clock>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }