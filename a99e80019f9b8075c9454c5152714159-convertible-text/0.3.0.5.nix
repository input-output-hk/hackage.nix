{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildtests = false;
      nolib = false;
      time_gte_113 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "convertible-text";
        version = "0.3.0.5";
      };
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
      "convertible-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.attempt)
          (hsPkgs.template-haskell)
        ] ++ [ (hsPkgs.time) ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }