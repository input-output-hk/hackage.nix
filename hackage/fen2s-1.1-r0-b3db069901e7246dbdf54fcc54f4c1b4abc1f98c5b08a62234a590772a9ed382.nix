{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "fen2s"; version = "1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Converting a chess position from FEN notation to text";
      description = "This package implements a simple utility to read in a chess position\ndescribed in FEN notation and print it using Unicode characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."opentheory-unicode" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-unicode"))
          (hsPkgs."api-opentheory-unicode" or ((hsPkgs.pkgs-errors).buildDepError "api-opentheory-unicode"))
          ];
        buildable = true;
        };
      exes = {
        "fen2s" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opentheory-unicode" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or ((hsPkgs.pkgs-errors).buildDepError "api-opentheory-unicode"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fen2s-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opentheory-unicode" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or ((hsPkgs.pkgs-errors).buildDepError "api-opentheory-unicode"))
            ];
          buildable = true;
          };
        };
      };
    }