{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      old-locale = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "time-locale-compat";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://twitter.com/khibino/";
      url = "";
      synopsis = "Compatibility of TimeLocale between old-locale and time-1.5";
      description = "This package contains wrapped name module for TimeLocale.";
      buildType = "Simple";
    };
    components = {
      "time-locale-compat" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if _flags.old-locale
          then [
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ]
          else [ (hsPkgs.time) ]);
      };
    };
  }