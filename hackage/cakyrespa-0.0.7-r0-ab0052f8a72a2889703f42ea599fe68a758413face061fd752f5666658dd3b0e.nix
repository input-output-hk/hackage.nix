{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cakyrespa"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iocikun juj <PAF01143@nifty.ne.jp>";
      author = "iocikun juj <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/myblog/cakyrespa.html";
      url = "";
      synopsis = "run turtle like LOGO with lojban";
      description = "run turtle like LOGO with lojban\n\nThis is alpha version.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cakyrespa" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lojbanParser" or ((hsPkgs.pkgs-errors).buildDepError "lojbanParser"))
            (hsPkgs."gluturtle" or ((hsPkgs.pkgs-errors).buildDepError "gluturtle"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."yjsvg" or ((hsPkgs.pkgs-errors).buildDepError "yjsvg"))
            ];
          buildable = true;
          };
        };
      };
    }