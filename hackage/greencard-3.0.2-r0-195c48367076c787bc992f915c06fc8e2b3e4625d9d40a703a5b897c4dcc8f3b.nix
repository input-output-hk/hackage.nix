{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "greencard"; version = "3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Alastair Reid <alastair@reid-consulting-uk.ltd.uk>, Sigbjorn Finne <sof@forkIO.com>, Thomas Nordin.";
      homepage = "";
      url = "";
      synopsis = "GreenCard, a foreign function pre-processor for Haskell.";
      description = "GreenCard, a foreign function pre-processor for Haskell.";
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
        "greencard" = {
          depends = if flags.old-base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
              (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              ];
          buildable = true;
          };
        };
      };
    }