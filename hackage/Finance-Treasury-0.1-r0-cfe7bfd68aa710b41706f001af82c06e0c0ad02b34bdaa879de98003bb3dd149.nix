{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Finance-Treasury";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stevelihn@gmail.com";
      author = "Stephen Lihn";
      homepage = "http://www.ecoin.net/haskell/Finance-Treasury.html";
      url = "";
      synopsis = "Obtain Treasury yield curve data";
      description = "Obtain Treasury yield curve data from Department of Treasury website";
      buildType = "Simple";
    };
    components = {
      "Finance-Treasury" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.HTTP-Simple)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.hxt)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.HTTP-Simple)
            (hsPkgs.time)
            (hsPkgs.hxt)
          ];
      };
    };
  }