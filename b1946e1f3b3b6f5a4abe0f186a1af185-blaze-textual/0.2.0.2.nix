{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      developer = false;
      native = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "blaze-textual";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/mailrank/blaze-textual";
      url = "";
      synopsis = "Fast rendering of common datatypes";
      description = "A library for efficiently rendering Haskell datatypes to\nbytestrings.";
      buildType = "Simple";
    };
    components = {
      "blaze-textual" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (!_flags.native) (hsPkgs.double-conversion)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11") (hsPkgs.integer-gmp)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11")) (hsPkgs.integer);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-textual)
            (hsPkgs.bytestring)
            (hsPkgs.double-conversion)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }