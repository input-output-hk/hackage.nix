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
      identifier = { name = "bittorrent"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/cobit/bittorrent";
      url = "";
      synopsis = "Bittorrent protocol implementation.";
      description = "A library for making Haskell bittorrent applications easy.\n\nFor more information see:\n<https://github.com/cobit/bittorrent/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bits-extras" or (buildDepError "bits-extras"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
          (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."cereal-conduit" or (buildDepError "cereal-conduit"))
          (hsPkgs."binary-conduit" or (buildDepError "binary-conduit"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."IntervalMap" or (buildDepError "IntervalMap"))
          (hsPkgs."intset" or (buildDepError "intset"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."base32-bytestring" or (buildDepError "base32-bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bencoding" or (buildDepError "bencoding"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."urlencoded" or (buildDepError "urlencoded"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."krpc" or (buildDepError "krpc"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."bencoding" or (buildDepError "bencoding"))
            (hsPkgs."bittorrent" or (buildDepError "bittorrent"))
            ];
          };
        };
      };
    }