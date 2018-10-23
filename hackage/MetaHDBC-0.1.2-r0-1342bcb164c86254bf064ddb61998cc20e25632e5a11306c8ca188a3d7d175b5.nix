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
        name = "MetaHDBC";
        version = "0.1.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      maintainer = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      author = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Statically checked database access";
      description = "Using Template Haskell and HDBC to do statically checked\ndatabase access.";
      buildType = "Simple";
    };
    components = {
      "MetaHDBC" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-odbc)
          (hsPkgs.template-haskell)
          (hsPkgs.convertible)
        ];
      };
    };
  }