{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "inline-c-cpp"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "(c) 2015-2016 FP Complete Corporation, (c) 2017-2019 Francesco Mazzoli";
      maintainer = "f@mazzo.li";
      author = "Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "Lets you embed C++ code into Haskell.";
      description = "Utilities to inline C++ code into Haskell using inline-c.  See\ntests for example on how to build.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
            (hsPkgs."inline-c-cpp" or ((hsPkgs.pkgs-errors).buildDepError "inline-c-cpp"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      };
    }