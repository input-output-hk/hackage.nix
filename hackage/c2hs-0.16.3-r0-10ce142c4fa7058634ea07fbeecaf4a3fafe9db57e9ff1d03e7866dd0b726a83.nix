{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base3 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "c2hs"; version = "0.16.3"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 1999-2007 Manuel M T Chakravarty\n2005-2008 Duncan Coutts\n2008      Benedikt Huber";
      maintainer = "chak@cse.unsw.edu.au, duncan@haskell.org";
      author = "Manuel M T Chakravarty";
      homepage = "http://www.cse.unsw.edu.au/~chak/haskell/c2hs/";
      url = "";
      synopsis = "C->Haskell FFI tool that gives some cross-language type safety";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries. It extracts interface information from C header\nfiles and generates Haskell code with foreign imports and\nmarshaling. Unlike writing foreign imports by hand (or using\nhsch2s), this ensures that C functions are imported with the\ncorrect Haskell types.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "c2hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ] ++ (if flags.base3
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