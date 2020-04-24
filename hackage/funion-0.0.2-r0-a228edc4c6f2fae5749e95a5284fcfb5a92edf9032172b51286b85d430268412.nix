{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "funion"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nathanwiegand@gmail.com";
      author = "Nathan Wiegand";
      homepage = "http://github.com/nathanwiegand/funion";
      url = "";
      synopsis = "A unioning file-system using HFuse";
      description = "A unioning file-system using HFuse";
      buildType = "Simple";
      };
    components = {
      exes = {
        "funion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HFuse" or ((hsPkgs.pkgs-errors).buildDepError "HFuse"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }