{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "rainbow-tests"; version = "0.20.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 - 2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/rainbow";
      url = "";
      synopsis = "Tests and QuickCheck generators to accompany rainbow.";
      description = "These are packaged separately so other packages may depend\non them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
          ];
        buildable = true;
        };
      };
    }