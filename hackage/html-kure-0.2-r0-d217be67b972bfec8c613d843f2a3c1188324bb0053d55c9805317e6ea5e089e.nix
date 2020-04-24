{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "html-kure"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andygill@ku.edu";
      author = "Andy Gill";
      homepage = "www.ittc.ku.edu/csdl/fpg/software/html-kure";
      url = "";
      synopsis = "HTML rewrite engine, using KURE.";
      description = "This package provides a uniform KURE-based API\nfor walking over, and generating, HTML structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."kure" or ((hsPkgs.pkgs-errors).buildDepError "kure"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }