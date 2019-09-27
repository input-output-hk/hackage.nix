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
    flags = {
      developer = false;
      with-fix40 = true;
      with-fix41 = true;
      with-fix42 = true;
      with-fix43 = false;
      with-fix44 = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "fixhs"; version = "0.1.2"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Arvin Moezzi";
      author = "Arvin Moezzi";
      homepage = "http://github.com/urv/fixhs";
      url = "";
      synopsis = "FIX (co)parser";
      description = "Financial Information eXchange (FIX) protocol (co)parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (buildDepError "attoparsec-enumerator"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          ];
        buildable = true;
        };
      exes = {
        "fix-generator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }