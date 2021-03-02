{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "cql-io"; version = "1.1.0"; };
      license = "MPL-2.0";
      copyright = "(C) 2014-2016 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>,\nRoman S. Borschel <roman@pkaboo.org>";
      author = "Toralf Wittner";
      homepage = "https://gitlab.com/twittner/cql-io/";
      url = "";
      synopsis = "Cassandra CQL client.";
      description = "CQL Cassandra driver supporting native protocol versions 3 and 4.\n\nThis library uses the <http://hackage.haskell.org/package/cql cql> library\nwhich implements Cassandra's CQL protocol and complements it with the\nneccessary I/O operations. The feature-set includes:\n\n* /Node discovery/. The driver discovers nodes automatically from a small\nset of bootstrap nodes.\n\n* /Customisable load-balancing policies/. In addition to pre-built LB\npolicies such as round-robin, users of this library can provide their\nown policies if desired.\n\n* /Support for connection streams/. Requests can be multiplexed over a\nfew connections.\n\n* /Customisable retry settings/. Support for default retry settings as well\nas local overrides per query.\n\n* /Prepared queries/. Prepared queries are an optimisation which parse\nand prepare a query only once on Cassandra nodes but execute it many\ntimes with different concrete values.\n\n* /TLS support/. Client to node communication can optionally use transport\nlayer security (using HsOpenSSL).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cql-io".components.sublibs.cql-io-lib or (errorHandler.buildDepError "cql-io:cql-io-lib"))
          (hsPkgs."cql" or (errorHandler.buildDepError "cql"))
          ];
        buildable = true;
        };
      sublibs = {
        "cql-io-lib" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."auto-update" or (errorHandler.buildDepError "auto-update"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cql" or (errorHandler.buildDepError "cql"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cql-io-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cql" or (errorHandler.buildDepError "cql"))
            (hsPkgs."cql-io" or (errorHandler.buildDepError "cql-io"))
            (hsPkgs."cql-io".components.sublibs.cql-io-lib or (errorHandler.buildDepError "cql-io:cql-io-lib"))
            (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }