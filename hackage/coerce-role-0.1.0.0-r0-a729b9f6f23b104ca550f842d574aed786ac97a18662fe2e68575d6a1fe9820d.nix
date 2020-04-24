{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "coerce-role"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matthew Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/parsonsmatt/coerce-role#readme";
      url = "";
      synopsis = "Having trouble deriving instances because of type roles? Solve it here!";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/coerce-role#readme>";
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
        "coerce-role-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."coerce-role" or ((hsPkgs.pkgs-errors).buildDepError "coerce-role"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }