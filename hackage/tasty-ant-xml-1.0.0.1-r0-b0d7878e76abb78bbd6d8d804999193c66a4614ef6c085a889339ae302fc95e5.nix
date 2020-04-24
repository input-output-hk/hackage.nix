{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-ant-xml"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/tasty-ant-xml";
      url = "";
      synopsis = "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."reducers" or ((hsPkgs.pkgs-errors).buildDepError "reducers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }