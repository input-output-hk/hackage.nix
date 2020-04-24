{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "htdp-image"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trajafri@gmail.com";
      author = "Turab Jafri";
      homepage = "";
      url = "";
      synopsis = "Beginner friendly graphics library.";
      description = "htdp-image is a simple graphics library inspired by Racket's htdp/image.\nUnder the hood, it is a wrapper on top of Gloss, another easy\nto use graphics library but htdp-image makes drawing objects even easier for beginners.\nAs long as Gloss works on a machine, this library should also work.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."AC-Angle" or ((hsPkgs.pkgs-errors).buildDepError "AC-Angle"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          ];
        buildable = true;
        };
      tests = {
        "htdp-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."htdp-image" or ((hsPkgs.pkgs-errors).buildDepError "htdp-image"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }