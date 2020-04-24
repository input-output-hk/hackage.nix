{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "c2hs"; version = "0.15.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) [1999..2007] Manuel M T Chakravarty";
      maintainer = "chak@cse.unsw.edu.au, duncan@haskell.org";
      author = "Manuel M T Chakravarty";
      homepage = "http://www.cse.unsw.edu.au/~chak/haskell/c2hs/";
      url = "";
      synopsis = "C->Haskell Interface Generator";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries.  It extracts C interface information from vanilla header\nfiles and generates marshaling and signature code in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "c2hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }