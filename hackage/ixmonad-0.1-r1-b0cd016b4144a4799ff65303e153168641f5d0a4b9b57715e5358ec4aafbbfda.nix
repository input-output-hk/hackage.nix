{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ixmonad";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Indexed monads library";
      description = "see http://dorchard.co.uk/ixmonad";
      buildType = "Simple";
    };
    components = {
      "ixmonad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.HList)
        ];
      };
    };
  }