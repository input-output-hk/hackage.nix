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
        name = "seclib";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright:      (c) 2008 ~ 2014 Alejandro Russo, Koen Claessen, John Hughes";
      maintainer = "russo@chalmers.se";
      author = "Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "A simple library for static information-flow security in Haskell";
      description = "The library is based on the paper\n/A Library for Light-weight Information-Flow Security in Haskell/ by Alejandro Russo, Koen Claessen\nand John Hughes. In Proceedings of the ACM SIGPLAN 2008 Haskell Symposium, Victoria, British Columbia,\nCanada, September 2008.\n<http://www.cse.chalmers.se/~russo/publications_files/haskell22Ext-russo.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
      };
    };
  }