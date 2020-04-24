{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "DrIFT"; version = "2.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gwern <gwern0@gmail.com>, Metasepi team <metasepi@gmail.com>";
      author = "Noel Winstanley, John Meacham <john@repetae.net>";
      homepage = "http://repetae.net/computer/haskell/DrIFT/";
      url = "";
      synopsis = "Program to derive type class instances";
      description = "Data.Derive <http://hackage.haskell.org/package/derive> is good another solution for DrFIT.\nBut DrFIT is Haskell 98 compliant, derive is not.\n\nDrIFT is a type sensitive preprocessor for Haskell. It extracts type declarations\nand directives from modules. The directives cause rules to be fired on the parsed\ntype declarations, generating new code which is then appended to the bottom of the input\nfile. The rules are expressed as Haskell code, and it is intended that the user can add new\nrules as required.\n\nDrIFT automates instance derivation for classes that aren't supported by the standard compilers.\nIn addition, instances can be produced in seperate modules to that containing the type declaration.\nThis allows instances to be derived for a type after the original module has been compiled.\nAs a bonus, simple utility functions can also be produced from a type.\n\nThis package was cabalized by gwern <gwern0@gmail.com>.";
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
        "DrIFT" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."DrIFT" or ((hsPkgs.pkgs-errors).buildDepError "DrIFT"))
            ];
          buildable = true;
          };
        "drift-ghc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }