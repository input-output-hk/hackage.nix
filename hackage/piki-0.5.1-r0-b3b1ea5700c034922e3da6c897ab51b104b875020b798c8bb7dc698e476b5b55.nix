{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "piki"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/piki/";
      url = "";
      synopsis = "Yet another Wiki format converter";
      description = "\"piki\" is a script to convert a WIKI text file\nto an HTML file. Unlike other WIKI systems,\n\"piki\" is not executed through a web server.\nYou can use \"piki\" in the shell command line.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "piki" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec3" or ((hsPkgs.pkgs-errors).buildDepError "parsec3"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }