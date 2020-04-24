{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "structured-haskell-mode"; version = "1.0.15"; };
      license = "BSD-3-Clause";
      copyright = "Chris Done 2013";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/structured-haskell-mode";
      url = "";
      synopsis = "Structured editing Emacs mode for Haskell";
      description = "Structured editing Emacs mode for Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "structured-haskell-mode" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."descriptive" or ((hsPkgs.pkgs-errors).buildDepError "descriptive"))
            ];
          buildable = true;
          };
        };
      };
    }