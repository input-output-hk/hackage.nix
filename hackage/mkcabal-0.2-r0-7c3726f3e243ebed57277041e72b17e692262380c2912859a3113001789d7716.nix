{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "mkcabal"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "2005-07, Don Stewart";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mkcabal";
      url = "";
      synopsis = "Generate cabal files for a Haskell project";
      description = "Generate cabal files for a Haskell project";
      buildType = "Custom";
      };
    components = {
      exes = {
        "mkcabal" = {
          depends = [
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }