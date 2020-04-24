{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unsafely"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Hiromi ISHII";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/unsafely";
      url = "";
      synopsis = "Flexible access control for unsafe operations and instances";
      description = "This module aims at providing simple interface to control the acccess for /unsafe/\noperations and instance.\nThe motivation of this package is somewhat similar to\n@<https://ghc.haskell.org/trac/ghc/ticket/7642 NullaryTypeClasses>@ extension,\nbut permits more flexible access control.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "semigroup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unsafely" or ((hsPkgs.pkgs-errors).buildDepError "unsafely"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"));
          buildable = if flags.examples then true else false;
          };
        "safe-unsafe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unsafely" or ((hsPkgs.pkgs-errors).buildDepError "unsafely"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"));
          buildable = if flags.examples then true else false;
          };
        };
      };
    }