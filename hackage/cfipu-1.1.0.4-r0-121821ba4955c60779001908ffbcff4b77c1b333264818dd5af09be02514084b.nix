{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "cfipu"; version = "1.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "https://github.com/bairyn/cfipu";
      url = "";
      synopsis = "cfipu processor for toy brainfuck-like language";
      description = "A cfipu processor that can interpret and process cfipu source.\n\ncfipu is a toy brainfuck-like language.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cfipu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."dequeue" or ((hsPkgs.pkgs-errors).buildDepError "dequeue"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or ((hsPkgs.pkgs-errors).buildToolDepError "ghc")))
            ];
          buildable = true;
          };
        };
      };
    }