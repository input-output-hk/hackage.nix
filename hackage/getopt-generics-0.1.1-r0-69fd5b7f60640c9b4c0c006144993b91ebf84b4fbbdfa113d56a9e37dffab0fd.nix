{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "getopt-generics"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "linh.nguyen@zalora.com, soenke.hahn@zalora.com";
      author = "Linh Nguyen, Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Simple command line argument parsing";
      description = "\"getopt-generics\" tries to make it very simple to create command line argument\nparsers. Documentation can be found in the\n<https://github.com/zalora/getopt-generics#getopt-generics README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."getopt-generics" or ((hsPkgs.pkgs-errors).buildDepError "getopt-generics"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            ];
          buildable = true;
          };
        };
      };
    }