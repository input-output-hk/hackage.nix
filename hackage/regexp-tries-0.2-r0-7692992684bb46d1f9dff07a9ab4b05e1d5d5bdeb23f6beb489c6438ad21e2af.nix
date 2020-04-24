{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "regexp-tries"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>";
      author = "Andreas Baldeau";
      homepage = "http://github.com/baldo/regexp-tries";
      url = "";
      synopsis = "Regular Expressions on Tries.";
      description = "Regular Expressions on Tries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."derive-trie" or ((hsPkgs.pkgs-errors).buildDepError "derive-trie"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."weighted-regexp" or ((hsPkgs.pkgs-errors).buildDepError "weighted-regexp"))
          ];
        buildable = true;
        };
      };
    }