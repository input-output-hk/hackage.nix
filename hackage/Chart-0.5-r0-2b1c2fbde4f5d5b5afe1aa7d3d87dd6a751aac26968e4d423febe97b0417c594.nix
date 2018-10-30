{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Chart";
        version = "0.5";
      };
      license = "BSD-4-Clause";
      copyright = "Tim Docker, 2006";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "http://www.dockerz.net/software/chart.html";
      url = "";
      synopsis = "A library for generating 2D Charts and Plots";
      description = "A library for generating 2D Charts and Plots, based upon the cairo graphics library.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.gtk)
          (hsPkgs.cairo)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }