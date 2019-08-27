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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "storable-record"; version = "0.0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storable@henning-thielemann.de>";
      author = "Henning Thielemann <storable@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/storable-record/";
      url = "";
      synopsis = "Elegant definition of Storable instances for records";
      description = "With this package\nyou can build a Storable instance of a record type\nfrom Storable instances of its elements in an elegant way.\nIt does not do any magic,\njust a bit arithmetic to compute the right offsets,\nthat would be otherwise done manually\nor by a preprocessor like C2HS.\nI cannot promise that the generated memory layout\nis compatible with that of a corresponding C struct.\nHowever, the module generates the smallest layout\nthat is possible with respect to the alignment of the record elements.\nIf you encounter, that a record does not have a compatible layout,\nwe should fix that.\nBut also without C compatibility this package is useful\ne.g. in connection with StorableVector.\n\nWe provide Storable instance support for several cases:\n\n* If you wrap a type in a @newtype@,\nthen you can lift its 'Storable' instance to that @newtype@\nwith the module \"Foreign.Storable.Newtype\".\nThis way you do not need the @GeneralizedNewtypeDeriving@ feature of GHC.\n\n* If you have a type that is an instance of 'Traversable',\nyou can use that feature for implementation of 'Storable' methods.\nThe module \"Foreign.Storable.Traversable\"\nallows manipulation of the portion of your type,\nthat is accessible by 'Traversable' methods.\nFor instance with the type\n@data T a = Cons Int [a]@\nand an according 'Traversable' implementation,\nyou can load and store the elements of the contained list.\nThis may be part of a 'Storable' implementation of the whole type.\n\n* If you have a record containing elements of various types,\nthen you need module \"Foreign.Storable.Record\".\n\nNote however that the Storable instances\ndefined with this package are quite slow in (up to) GHC-6.12.1.\nI'm afraid this is due to incomplete inlining,\nbut we have still to investigate the problem.\n\nFor examples see packages @storable-tuple@ and @sample-frame@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."special-functors" or (buildDepError "special-functors"))
            (hsPkgs."base" or (buildDepError "base"))
            ]);
        };
      };
    }