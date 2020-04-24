{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "marvin-interpolate"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2016, 2017 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "http://marvin.readthedocs.io/en/latest/interpolation.html";
      url = "";
      synopsis = "Compile time string interpolation a la Scala and CoffeeScript";
      description = "The documentation can be found on readthedocs <https://marvin.readthedocs.io/en/latest/interpolation.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "marvin-interpolate-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."marvin-interpolate" or ((hsPkgs.pkgs-errors).buildDepError "marvin-interpolate"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }