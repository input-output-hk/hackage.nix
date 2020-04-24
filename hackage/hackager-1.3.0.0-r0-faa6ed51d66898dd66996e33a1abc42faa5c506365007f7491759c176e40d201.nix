{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hackager"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Terei <code@davidterei.com>";
      author = "The GHC Team, David Terei <code@davidterei.com>";
      homepage = "https://github.com/dterei/Hackager";
      url = "";
      synopsis = "Hackage testing tool";
      description = "Hackager is a program for compiling the entirety of Hackage as a way of\ntesting a Haskell compiler.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackager" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            ];
          buildable = true;
          };
        };
      };
    }