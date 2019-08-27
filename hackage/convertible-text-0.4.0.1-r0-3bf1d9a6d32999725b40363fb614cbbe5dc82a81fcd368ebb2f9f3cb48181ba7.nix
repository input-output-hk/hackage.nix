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
    flags = { buildtests = false; nolib = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "convertible-text"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2009 John Goerzen, Copyright (c) 2010-2011 Michael Snoyman";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "John Goerzen, Michael Snoyman";
      homepage = "http://github.com/snoyberg/convertible/tree/text";
      url = "";
      synopsis = "Typeclasses and instances for converting between types";
      description = "This is a port of John Goerzen's convertible package, intended to distinguish between conversions which are guaranteed to succeed and those which might fail.  It uses the attempt package, which in turn uses the failure package, so that this package is fully compatible with the failure framework.\n\nThis package currently contains all of the typeclasses and instances for convertible.  However, as these features are ported to the convertible package, this package will be left with only the instances for converting to and from text types (String, ByteString (lazy and strict) and Text (lazy and strict).\n\nBe aware that conversions to and from bytestrings assume UTF-8 encoding. If a different encoding is desired, you can use a newtype wrapper and declare an instance of @ConvertAttempt@ or @ConvertSuccess@ on it.\n\nThe main module to import is \"Data.Convertible.Text\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."attempt" or (buildDepError "attempt"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }