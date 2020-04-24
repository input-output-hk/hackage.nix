{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; tests = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "happstack-ixset"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Efficient relational queries on Haskell sets.";
      description = "Just pick which parts of your data structures you want indexed using an easy to use template-haskell function. Spare yourself the need to write, run, and maintain code that marshalls your data to/from an external relational database just for efficient queries. happstack-ixset relies on generics and TH to spare you the boilerplate normally required for such tasks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."happstack-util" or ((hsPkgs.pkgs-errors).buildDepError "happstack-util"))
          (hsPkgs."happstack-data" or ((hsPkgs.pkgs-errors).buildDepError "happstack-data"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "happstack-ixset-tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }