{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "cassy"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com";
      author = "Ozgun Ataman";
      homepage = "http://github.com/ozataman/cassy";
      url = "";
      synopsis = "A high level driver for the Cassandra datastore";
      description = "The objective is to completely isolate away the thrift layer, providing\na more idiomatic and naruall Haskell experience working with Cassandra. Be sure\nto check out the README on Github for some more explanation and\nRelease Notes, which is helpful in talking about what this library\ncan do.\n\nCertain parts of the API was inspired by pycassa (Python client) and\nhscassandra (on Hackage).\n\nPlease see the Github repository for more detailed documentation,\nrelease notes and examples.\n\nA brief explanation of modules:\n\n* /Database.Cassandra.Basic/: Contains a low level, simple\nimplementation of Cassandra interaction using the thrift API\nunderneath.\n\n* /Database.Cassandra.Marshall/: Intended to be the main high level\nmodule that you should use, Marshall allows you to pick the\nserialization strategy you would like to use at each function\ncall. We recommend using 'casSafeCopy' due to its support for\nevolving data types, although casJSON maybe another popular\nchoice.\n\n* /Database.Cassandra.JSON/: (Now deprecated; use Marshall instead)\nA higher level API that operates on values with ToJSON and\nFromJSON isntances from the /aeson/ library. This module has in\npart been inspired by Bryan O\\'Sullivan\\'s /riak/ client for\nHaskell.\n\n* /Database.Cassandra.Pool/: Handles a /pool/ of connections to\nmultiple servers in a cluster, splitting the load among them.\n\n* /Database.Cassandra.Pack/: Handles column types that Cassandra\nrecognizes and adds support for Composite Columns.\n\n* /Database.Cassandra.Types/: A common set of types used everywhere.\n\nPotential TODOs include:\n\n* Support for counters and batch mutators\n\n* Support for database admin operations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Thrift" or ((hsPkgs.pkgs-errors).buildDepError "Thrift"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cassandra-thrift" or ((hsPkgs.pkgs-errors).buildDepError "cassandra-thrift"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."retry" or ((hsPkgs.pkgs-errors).buildDepError "retry"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cassy" or ((hsPkgs.pkgs-errors).buildDepError "cassy"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."Thrift" or ((hsPkgs.pkgs-errors).buildDepError "Thrift"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."cassandra-thrift" or ((hsPkgs.pkgs-errors).buildDepError "cassandra-thrift"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            ];
          buildable = true;
          };
        };
      };
    }