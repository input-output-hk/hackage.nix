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
        name = "hspec2";
        version = "0.6.1";
      };
      license = "MIT";
      copyright = "(c) 2011-2014 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Alpha version of Hspec 2.0";
      description = "This is an alpha release of Hspec 2.0.\nIf you are looking for a stable solution for testing Haskell\ncode, use the 1.x series of Hspec: <http://hspec.github.io/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec-discover)
          (hsPkgs.hspec)
        ];
      };
    };
  }