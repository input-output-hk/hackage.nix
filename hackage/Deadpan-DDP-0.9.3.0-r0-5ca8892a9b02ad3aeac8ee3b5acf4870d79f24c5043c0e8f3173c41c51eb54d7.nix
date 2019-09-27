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
      identifier = { name = "Deadpan-DDP"; version = "0.9.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "maydwell@gmail.com";
      author = "Lyndon Maydwell";
      homepage = "http://github.com/sordina/Deadpan-DDP";
      url = "";
      synopsis = "Write clients for Meteor's DDP Protocol";
      description = "The Deadpan-DDP project includes a debugging-tool, as well as a general purpose library.\n\n<https://github.com/meteor/meteor/blob/devel/packages/ddp/DDP.md DDP> is the protocol that\n<http://meteor.com Meteor> speaks between client and server.\n\nThe DDP tech-stack is: Websockets -> JSON -> EJson -> Collections -> Subscriptions + RPC.\n\nIn order to use the debugging tool, install this package and run `deadpan` for a usage\nstatement.\n\nIn order to use the library, simply import \"Web.DDP.Deadpan\".\n\nThe DSL monad is largely based around RPC calls and callbacks.\nIn order to write an application you would call\n`Web.DDP.Deadpan.runClient` with\n\n* An initial application state (this includes initial callbacks)\n\n* A set of connection parameters\n\n* A `Web.DDP.Deadpan.DSL.Deadpan` application\n\nThere are several callback-sets provided in \"Web.DDP.Deadpan\",\nhowever, if you want to pick in a more granular fashion,\nlook inside \"Web.DDP.Deadpan.Callbacks\".\n\nThe connection parameters are the triple (Domain, Port, Path)...\n\nFor convenience the function getURI is provided to turn a URI\nof the form <websocket://localhost:3000/websocket>\ninto the triple (Right (\"localhost\", 3000, \"websocket\"))...\nor an error (Left \"error message\").\n\nRefer to the <https://github.com/sordina/Deadpan-DDP#deadpan-ddp README.md> on Github for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        buildable = true;
        };
      exes = {
        "deadpan" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }