{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "matplotlib"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Andrei Barbu";
      maintainer = "andrei@0xab.com";
      author = "Andrei Barbu";
      homepage = "https://github.com/abarbu/matplotlib-haskell";
      url = "";
      synopsis = "Bindings to Matplotlib; a Python plotting library";
      description = "Matplotlib is probably the most full featured plotting library out there.\nThese bindings provide a quick, easy, and extensible way to use it in\nHaskell.\n\n<<https://github.com/abarbu/matplotlib-haskell/raw/master/imgs/contour.png>>\n\n> onscreen \$ contourF (\\a b -> sin (degreesRadians a) + cos (degreesRadians b)) (-100) 100 (-200) 200 10";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "matplotlib-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."matplotlib" or ((hsPkgs.pkgs-errors).buildDepError "matplotlib"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }