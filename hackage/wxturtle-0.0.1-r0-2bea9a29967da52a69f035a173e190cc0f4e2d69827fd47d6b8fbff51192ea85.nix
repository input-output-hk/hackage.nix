{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wxturtle"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "turtle like LOGO with wxHaskell";
      description = "turtle like LOGO with wxHaskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yjtools" or ((hsPkgs.pkgs-errors).buildDepError "yjtools"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."yjsvg" or ((hsPkgs.pkgs-errors).buildDepError "yjsvg"))
          (hsPkgs."Imlib" or ((hsPkgs.pkgs-errors).buildDepError "Imlib"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          ];
        buildable = true;
        };
      exes = { "testTurtle" = { buildable = true; }; };
      };
    }