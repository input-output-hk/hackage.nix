{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24.0";
      identifier = { name = "pathfindingcore"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.bertsche@gmail.com";
      author = "Jason Bertsche";
      homepage = "http://github.com/TheBizzle";
      url = "";
      synopsis = "A toy pathfinding library";
      description = "A toy pathfinding library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base-noprelude" or ((hsPkgs.pkgs-errors).buildDepError "base-noprelude"))
          (hsPkgs."bizzlelude" or ((hsPkgs.pkgs-errors).buildDepError "bizzlelude"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base-noprelude" or ((hsPkgs.pkgs-errors).buildDepError "base-noprelude"))
            (hsPkgs."bizzlelude" or ((hsPkgs.pkgs-errors).buildDepError "bizzlelude"))
            (hsPkgs."pathfindingcore" or ((hsPkgs.pkgs-errors).buildDepError "pathfindingcore"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }