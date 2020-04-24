{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "glob-posix"; version = "0.2.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2016 R D'Netto";
      maintainer = "rdnetto@gmail.com";
      author = "R D'Netto";
      homepage = "https://github.com/rdnetto/glob-posix#readme";
      url = "";
      synopsis = "Haskell bindings for POSIX glob library.";
      description = "Wrapper for the glob(3) function. The key functions are glob and globMany.\nGNU extensions are supported but contained in a different module to encourage portability.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "glob-posix-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."glob-posix" or ((hsPkgs.pkgs-errors).buildDepError "glob-posix"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or ((hsPkgs.pkgs-errors).buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "glob-posix-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."glob-posix" or ((hsPkgs.pkgs-errors).buildDepError "glob-posix"))
            ];
          buildable = true;
          };
        };
      };
    }