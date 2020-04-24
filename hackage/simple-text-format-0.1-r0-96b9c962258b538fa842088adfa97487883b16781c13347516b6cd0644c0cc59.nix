{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-text-format"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Justus Adam";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "https://github.com/JustusAdam/simple-text-format#readme";
      url = "";
      synopsis = "Simple text based format strings with named identifiers.";
      description = "A simple library for format strings based on text and attoparsec. See the readme for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "simple-text-format-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."simple-text-format" or ((hsPkgs.pkgs-errors).buildDepError "simple-text-format"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            ];
          buildable = true;
          };
        };
      };
    }