{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "yahoo-web-search";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Gordon Stewart, 2008";
      maintainer = "gstew5@gmail.com";
      author = "Gordon Stewart";
      homepage = "http://www.people.fas.harvard.edu/~stewart5/code/yahoo-web-search";
      url = "";
      synopsis = "Yahoo Web Search Services";
      description = "Documentation of the Yahoo Web Search APIs is available\nfrom the following URL: http:\\/\\/developer.yahoo.com\\/search\\/web\\/.\n\nExample code is provided in the base of the project directory.";
      buildType = "Simple";
    };
    components = {
      "yahoo-web-search" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.xml)
        ];
      };
    };
  }