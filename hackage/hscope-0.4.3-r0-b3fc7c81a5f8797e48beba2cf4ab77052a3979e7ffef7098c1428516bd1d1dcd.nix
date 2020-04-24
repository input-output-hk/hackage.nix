{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hscope"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko <boriss@gmail.com>";
      maintainer = "Boris Sukholitko <boriss@gmail.com>";
      author = "Boris Sukholitko <boriss@gmail.com>";
      homepage = "https://github.com/bosu/hscope";
      url = "";
      synopsis = "cscope like browser for Haskell code";
      description = "hscope is a partial cscope line oriented mode reimplementation for Haskell code.\nCurrently it supports finding the definition and callers of the function, types.\nAlso works searching for files and in files.\nSee hscope --help for available options.\nBeing cscope-compatible gives Vim integration for free. Use :set cscopeprg\nto configure hscope as cscope replacement for haskell files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscope" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pure-cdb" or ((hsPkgs.pkgs-errors).buildDepError "pure-cdb"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Build" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-simple" or ((hsPkgs.pkgs-errors).buildDepError "test-simple"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Unixutils" or ((hsPkgs.pkgs-errors).buildDepError "Unixutils"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }