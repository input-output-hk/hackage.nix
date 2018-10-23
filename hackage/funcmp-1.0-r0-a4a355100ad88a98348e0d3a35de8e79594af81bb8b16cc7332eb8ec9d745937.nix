{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "funcmp";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Meik Hellmund, Ralf Hinze, Joachim Korittky,\nMarco Kuhlmann, Ferenc Wágner, Peter Simons";
      homepage = "http://cryp.to/funcmp/";
      url = "";
      synopsis = "Functional MetaPost";
      description = "Functional MetaPost is a Haskell frontend\nto the MetaPost language by John Hobby.\nUsers write their graphics as Haskell\nprograms, which then emit MetaPost code\nthat can be compiled into encapsulated\nPostScript files and smoothly included into\ne.g. LaTeX.";
      buildType = "Custom";
    };
    components = {
      "funcmp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }