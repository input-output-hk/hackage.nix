{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "tuple-hlist"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2012-2014, Nicolas Dudebout <nicolas.dudebout@gatech.edu>";
      maintainer = "Nicolas Dudebout <nicolas.dudebout@gatech.edu>";
      author = "Nicolas Dudebout";
      homepage = "http://github.com/dudebout/tuple-hlist";
      url = "";
      synopsis = "Functions to convert between tuples and HLists.";
      description = "Functions to convert between tuples and HLists, overloaded on tuple size.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OneTuple" or ((hsPkgs.pkgs-errors).buildDepError "OneTuple"))
          (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
          ];
        buildable = true;
        };
      };
    }