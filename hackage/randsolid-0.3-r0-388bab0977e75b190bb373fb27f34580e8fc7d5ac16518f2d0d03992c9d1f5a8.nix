{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "randsolid"; version = "0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "w+randsolid@antiklimax.se";
      author = "Johannes Martinsson";
      homepage = "";
      url = "";
      synopsis = "Set the background of your root window to a random colour.";
      description = "Set the background of your root window to a random colour (or just print the colour).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "randsolid" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }