{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      utf8terminal = false;
      utf8cgi = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PTQ";
        version = "0.0.6";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Masahiro Sakai <masahiro.sakai AT gmail.com>";
      author = "Masahiro Sakai";
      homepage = "http://www.tom.sfc.keio.ac.jp/~sakai/hiki/?hsPTQ";
      url = "";
      synopsis = "An implementation of Montague's PTQ.";
      description = "An implementation of Montague's PTQ (Proper Treatment of Quantification). It translates simple plain English sentences into formulas of intentional logic.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ptq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
        };
        "ptq.cgi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.xml)
          ];
        };
      };
    };
  }