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
      identifier = { name = "tagged-binary"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) Justin Le 2014";
      maintainer = "Justin Le <justin@jle.im>";
      author = "Justin Le <justin@jle.im>";
      homepage = "";
      url = "";
      synopsis = "Provides tools for serializing data tagged with type\ninformation.";
      description = "Very minimal library providing tools for serializing and\ndecoding data into 'ByteString' tagged with information\nabout its type, inspired by Cloud Haskell and\ndistributed-process.\n\nIntended for use by libraries and frameworks in\ndistributed contexts, such as distributed computation\nbetween native servers and communication between native\nservers and ghcjs/various front-ends, for behavior\nsimilar to the polymorphic communication channels of\nCloud Haskell and distributed-process; servers can send\ntagged data, and clients can choose to selectively\naccept, ignore or queue incoming messages depending on\ntheir types.\n\nFor basic encoding, decoding and categorization, only\n'Data.Binary.Tagged' should be necessary.\n'Data.Binary.Tagged.Internal' is exported in case you\nneed it.\n\nQuick example:\n\n> > let x = encodeTagged (1 :: Int)\n> > decodeTagged x :: Maybe Bool\n> Nothing\n> > decodeTagged x :: Maybe Int\n> Just 1";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."spoon" or (buildDepError "spoon"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          ];
        buildable = true;
        };
      };
    }