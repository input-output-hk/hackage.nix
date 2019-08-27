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
      specVersion = "1.6";
      identifier = { name = "tablestorage"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Phil Freeman 2012";
      maintainer = "Phil Freeman <paf31-at-cantab.net>";
      author = "Phil Freeman <paf31-at-cantab.net>";
      homepage = "http://github.com/paf31/tablestorage";
      url = "";
      synopsis = "Azure Table Storage REST API Wrapper";
      description = "A collection of functions to call the methods of the Azure Table Storage REST API from Haskell.\nTable and entity level functions are supported along with shared key authentication token generation, and error handling.\nPagination and projections are currently not supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ];
        };
      };
    }