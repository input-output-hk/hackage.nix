{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "msu"; version = "0.0.2"; };
      license = "MIT";
      copyright = "(c) 2013 Pat Brisbin";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "http://github.com/pbrisbin/msu";
      url = "";
      synopsis = "Monitor Setup Utility";
      description = "Convenient wrapper over xrandr for setting up monitors";
      buildType = "Simple";
      };
    components = {
      exes = {
        "msu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
            ];
          buildable = true;
          };
        };
      };
    }