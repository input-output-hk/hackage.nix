{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      splitbase = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-fin";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012--2014 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Finite totally ordered sets";
      description = "Finite totally ordered sets";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.tagged)
          (hsPkgs.reflection)
          (hsPkgs.prelude-safeenum)
          (hsPkgs.smallcheck)
          (hsPkgs.lazysmallcheck)
          (hsPkgs.QuickCheck)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }