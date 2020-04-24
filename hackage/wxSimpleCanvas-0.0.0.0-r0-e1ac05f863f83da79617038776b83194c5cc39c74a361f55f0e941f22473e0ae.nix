{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wxSimpleCanvas"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2016)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Simple zoomable canvas for wxHaskell";
      description = "A simple zoomable canvas for wxHaskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cubicbezier" or ((hsPkgs.pkgs-errors).buildDepError "cubicbezier"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          ];
        buildable = true;
        };
      };
    }