{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "factor"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Factoring integers";
      description = "Factoring positive integers using the Williams p+1 factorization\nmethod.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "factor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "arithmetic"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }