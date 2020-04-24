{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack"; version = "6.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "The haskell application server stack + code generation";
      description = "The haskell application server stack";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."happstack-data" or ((hsPkgs.pkgs-errors).buildDepError "happstack-data"))
          (hsPkgs."happstack-ixset" or ((hsPkgs.pkgs-errors).buildDepError "happstack-ixset"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."happstack-state" or ((hsPkgs.pkgs-errors).buildDepError "happstack-state"))
          (hsPkgs."happstack-util" or ((hsPkgs.pkgs-errors).buildDepError "happstack-util"))
          ];
        buildable = true;
        };
      exes = {
        "happstack-tests" = {
          depends = (pkgs.lib).optional (flags.tests) (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"));
          buildable = if flags.tests then true else false;
          };
        };
      };
    }