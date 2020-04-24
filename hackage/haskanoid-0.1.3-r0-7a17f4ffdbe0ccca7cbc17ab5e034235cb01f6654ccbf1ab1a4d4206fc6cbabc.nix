{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { wiimote = true; kinect = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "haskanoid"; version = "0.1.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Henrik Nilsson";
      homepage = "http://github.com/ivanperez-keera/haskanoid";
      url = "";
      synopsis = "A breakout game written in Yampa using SDL";
      description = "An arkanoid game featuring SDL graphics and sound, and\nWiimote & Kinect support, implemented using Yampa.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskanoid" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
            (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            ] ++ (pkgs.lib).optional (flags.wiimote) (hsPkgs."hcwiid" or ((hsPkgs.pkgs-errors).buildDepError "hcwiid"))) ++ (pkgs.lib).optionals (flags.kinect) [
            (hsPkgs."freenect" or ((hsPkgs.pkgs-errors).buildDepError "freenect"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }