let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tex-join-bib"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2020 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/tex-join-bib#readme";
      url = "";
      synopsis = "Compile separate tex files with the same bibliography.";
      description = "Compile tex files separately to keep each file's configuration but have a universal bibliography numbering.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          ];
        buildable = true;
        };
      exes = {
        "tex-join-bib" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tex-join-bib" or (buildDepError "tex-join-bib"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }