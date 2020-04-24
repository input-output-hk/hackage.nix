{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      base4 = true;
      tests = false;
      old-haxml = false;
      new-haxml = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-data"; version = "6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Happstack data manipulation libraries";
      description = "This package provides libraries for:\n\n* Deriving instances for your datatypes.\n\n* Producing default values of Haskell datatypes.\n\n* Normalizing values of Haskell datatypes.\n\n* Marshalling Haskell values to and from XML.\n\n* Marshalling Haskell values to and from HTML forms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."syb-with-class-instances-text" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class-instances-text"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ])) ++ [
          (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
          ]) ++ (pkgs.lib).optional (flags.old-haxml) (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))) ++ (pkgs.lib).optional (flags.new-haxml) (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))) ++ (pkgs.lib).optional (flags.tests) (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"));
        buildable = true;
        };
      exes = {
        "happstack-data-tests" = {
          depends = (pkgs.lib).optional (flags.tests) (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"));
          buildable = if flags.tests then true else false;
          };
        };
      };
    }