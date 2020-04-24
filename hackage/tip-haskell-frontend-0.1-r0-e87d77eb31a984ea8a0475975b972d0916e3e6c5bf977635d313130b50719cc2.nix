{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tip-haskell-frontend"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danr@chalmers.se";
      author = "Dan Rosén";
      homepage = "http://tip-org.github.io";
      url = "";
      synopsis = "Convert from Haskell to Tip";
      description = "Convert from Haskell to Tip";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."geniplate-mirror" or ((hsPkgs.pkgs-errors).buildDepError "geniplate-mirror"))
          (hsPkgs."tip-lib" or ((hsPkgs.pkgs-errors).buildDepError "tip-lib"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "tip-ghc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tip-haskell-frontend" or ((hsPkgs.pkgs-errors).buildDepError "tip-haskell-frontend"))
            (hsPkgs."tip-lib" or ((hsPkgs.pkgs-errors).buildDepError "tip-lib"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }