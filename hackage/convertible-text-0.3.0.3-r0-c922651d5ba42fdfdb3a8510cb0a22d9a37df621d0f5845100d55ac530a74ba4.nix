{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; nolib = false; time_gte_113 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "convertible-text"; version = "0.3.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2009 John Goerzen";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attempt" or ((hsPkgs.pkgs-errors).buildDepError "attempt"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ] ++ [
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = if flags.nolib then false else true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }