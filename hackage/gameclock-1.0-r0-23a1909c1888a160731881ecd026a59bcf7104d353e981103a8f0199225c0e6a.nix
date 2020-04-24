{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "gameclock"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "quuxman@gmail.com";
      author = "Abram Clark <quuxman@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Game clock that shows two analog clock faces";
      description = "A game clock with optional Fischer time, two clock face styles, and other options";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsclock" = {
          depends = [
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }