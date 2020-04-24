{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "system-test"; version = "0.1.2"; };
      license = "MIT";
      copyright = "(c) 2016 Christopher Wells";
      maintainer = "cwellsny@nycap.rr.com";
      author = "Christopher Wells";
      homepage = "https://github.com/ExcaliburZero/system-test-haskell";
      url = "";
      synopsis = "Runs system tests of applications.";
      description = "System Test is a Haskell application which allows you to\nspecify and run system tests of applications. Tests are\ndefined in JSON files, whereby each test has a name,\ncommand, and expected output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "system-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."system-test" or ((hsPkgs.pkgs-errors).buildDepError "system-test"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."system-test" or ((hsPkgs.pkgs-errors).buildDepError "system-test"))
            ];
          buildable = true;
          };
        };
      };
    }