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
    flags = { optimized = true; j = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pgstream"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Elsen Inc.";
      maintainer = "info@elsen.co";
      author = "Elsen Inc.";
      homepage = "";
      url = "";
      synopsis = "Elsen Accelerated Computing Engine";
      description = "Elsen Accelerated Computing Engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."stm-conduit" or (buildDepError "stm-conduit"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }