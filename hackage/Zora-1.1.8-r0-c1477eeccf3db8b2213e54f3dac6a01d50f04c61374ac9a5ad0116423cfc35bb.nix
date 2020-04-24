{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Zora"; version = "1.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgwines@cs.stanford.edu";
      author = "Brett Wines";
      homepage = "http://github.com/bgwines/zora";
      url = "";
      synopsis = "A library of assorted useful functions and data types and classes.";
      description = "A library of assorted useful functions and data types and classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }