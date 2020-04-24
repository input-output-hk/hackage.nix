{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "constrained-dynamic"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "kindlangdev@googlemail.com";
      author = "Julian Hall";
      homepage = "";
      url = "";
      synopsis = "Dynamic typing with retained constraints";
      description = "Like Data.Dynamic, but extended to allow the specification\nof arbitrary constraints using ConstraintKinds.";
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
        "constrained-dynamic-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."constrained-dynamic" or ((hsPkgs.pkgs-errors).buildDepError "constrained-dynamic"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }