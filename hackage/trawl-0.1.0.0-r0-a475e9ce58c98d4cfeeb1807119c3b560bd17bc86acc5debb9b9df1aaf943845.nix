{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "trawl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Ben James";
      maintainer = "bmjames@gmail.com";
      author = "Ben James";
      homepage = "https://github.com/bmjames/trawl";
      url = "";
      synopsis = "A tool for finding haddocks";
      description = "trawl is a human-friendly wrapper around ghc-pkg, for locating local documentation for Haskell packages and modules.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "trawl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }