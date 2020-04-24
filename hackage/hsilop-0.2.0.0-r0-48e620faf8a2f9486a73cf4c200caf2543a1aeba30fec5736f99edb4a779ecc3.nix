{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsilop"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "micheleguerinirocco@me.com";
      author = "rnhmjoj";
      homepage = "https://github.com/Rnhmjoj/hsilop";
      url = "";
      synopsis = "RPN calculator";
      description = "ʜƨiloꟼ is a simple reverse polish notation calculator\nwith haskeline line editing capabilites.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsilop" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
            ];
          buildable = true;
          };
        };
      };
    }