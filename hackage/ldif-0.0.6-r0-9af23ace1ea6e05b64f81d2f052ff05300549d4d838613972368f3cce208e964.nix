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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "ldif"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/ldif.html";
      url = "";
      synopsis = "The LDAP Data Interchange Format (LDIF) parser";
      description = "LDIF files parser implementation using Parsec and based\non RFC 2849 - The LDAP Data Interchange Format (LDIF).\n\nCurrent implementation is unfinished and need to be enhanced\nfor base64 encoded values and various DN escaping.\n\nIt includes following tool:\n\n- diffLDIF command generates change LDIF between two\ncontent LDIF files.\n- ldif2html command generates hypertext HTML browsable\nLDIF file.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          ];
        };
      exes = {
        "diffLDIF" = {};
        "ldif2html" = {};
        "ldifmodify" = {};
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }