{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "alloy"; version = "1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2008-2009, 2012 University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown and Adam Sampson";
      homepage = "";
      url = "";
      synopsis = "Generic programming library";
      description = "Alloy is a generic programming library for performing traversals\nof data and applying specific operations to certain types.  More\ninformation is available in the tutorial\n(<http://twistedsquare.com/Alloy-Tutorial.pdf>) and the draft\npaper (<http://twistedsquare.com/Alloy.pdf>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }