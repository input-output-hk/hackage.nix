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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "connection-pool"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2016 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/connection-pool";
      url = "";
      synopsis = "Connection pool built on top of resource-pool and streaming-commons.";
      description = "Connection poll is a family of specialised resource pools. Currently package\nprovides two variants:\n\n1. pool for TCP client connections,\n\n2. and pool for UNIX Sockets client connections.\n\nIn addition it can be used to build your own connection pool using provided\nprimitives.\n\nThis package is built on top of\n<http://hackage.haskell.org/package/resource-pool resource-pool> and\n<http://hackage.haskell.org/package/streaming-commons streaming-commons>.\nThe later allows us to use\n<http://hackage.haskell.org/package/conduit-extra conduit-extra> package\nfor implementation of TCP or UNIX Sockets clients.\n\nFor examples and other details see documentation in \"Data.ConnectionPool\"\nmodule.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."between" or (buildDepError "between"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        };
      };
    }