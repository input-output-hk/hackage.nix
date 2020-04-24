{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "curves"; version = "1.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ulf.norell@gmail.com";
      author = "Ulf Norell";
      homepage = "";
      url = "";
      synopsis = "Library for drawing curve based images.";
      description = "Curves is an easy to use library for creating images. The\nbasic primitive is a curve, which, in the simplest case, is\na continuous function from a scalar parameter to a\n2-dimensional point on the curve. Images are rendered as\nPNG images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      };
    }