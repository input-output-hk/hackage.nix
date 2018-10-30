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
      specVersion = "1.14.0";
      identifier = {
        name = "prizm";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Parnell Springmeyer";
      maintainer = "ixmatus@gmail.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/prizm";
      url = "http://hackage.haskell.org/package/prizm";
      synopsis = "A haskell library for computing with colors";
      description = "Prizm can convert between many different color\nrepresentations; notably the sRGB and CIE\nrepresentations. Future versions will\nimplementations for mutating colors as well.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }