{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chitauri"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Marcus Buffett";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "https://github.com/marcusbuffett/chitauri";
      url = "";
      synopsis = "Helper for the Major System";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "chitauri" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."generic-trie" or ((hsPkgs.pkgs-errors).buildDepError "generic-trie"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."digits" or ((hsPkgs.pkgs-errors).buildDepError "digits"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."generic-trie" or ((hsPkgs.pkgs-errors).buildDepError "generic-trie"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            ];
          buildable = true;
          };
        };
      tests = {
        "chitauri-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chitauri" or ((hsPkgs.pkgs-errors).buildDepError "chitauri"))
            ];
          buildable = true;
          };
        };
      };
    }