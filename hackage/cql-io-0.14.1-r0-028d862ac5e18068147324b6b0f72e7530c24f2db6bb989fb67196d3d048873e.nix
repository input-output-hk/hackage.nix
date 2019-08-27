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
      identifier = { name = "cql-io"; version = "0.14.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(C) 2014-2015 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/cql-io/";
      url = "";
      synopsis = "Cassandra CQL client.";
      description = "CQL Cassandra driver supporting native protocol versions 2 and 3.\n\nThis library uses the <http://hackage.haskell.org/package/cql cql> library\nwhich implements Cassandra's CQL protocol and complements it with the\nneccessary I/O operations. The feature-set includes:\n\n* /Node discovery/. The driver discovers nodes automatically from a small\nset of bootstrap nodes.\n\n* /Customisable load-balancing policies/. In addition to pre-built LB\npolicies such as round-robin, users of this library can provide their\nown policies if desired.\n\n* /Support for connection streams/. Requests can be multiplexed over a\nfew connections.\n\n* /Customisable retry settings/. Support for default retry settings as well\nas local overrides per query.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."auto-update" or (buildDepError "auto-update"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cql" or (buildDepError "cql"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tinylog" or (buildDepError "tinylog"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      };
    }