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
      specVersion = "1.4";
      identifier = { name = "hellage"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "";
      url = "";
      synopsis = "Distributed hackage mirror";
      description = "Distributed hackage mirror, based on Hellnet.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hellage" = {
          depends = [
            (hsPkgs."hellnet" or (buildDepError "hellnet"))
            (hsPkgs."Lucu" or (buildDepError "Lucu"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hjson" or (buildDepError "hjson"))
            (hsPkgs."hjpath" or (buildDepError "hjpath"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "hellage-genmeta" = {
          depends = [
            (hsPkgs."hellnet" or (buildDepError "hellnet"))
            (hsPkgs."hjpath" or (buildDepError "hjpath"))
            (hsPkgs."hjson" or (buildDepError "hjson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          };
        };
      };
    }