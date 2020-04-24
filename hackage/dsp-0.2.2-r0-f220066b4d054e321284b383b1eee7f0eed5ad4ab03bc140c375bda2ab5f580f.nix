{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "dsp"; version = "0.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "Matt Donadio, 2003";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Matt Donadio <m.p.donadio@ieee.org>";
      homepage = "http://www.haskell.org/haskellwiki/DSP";
      url = "";
      synopsis = "Haskell Digital Signal Processing";
      description = "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
        buildable = true;
        };
      };
    }