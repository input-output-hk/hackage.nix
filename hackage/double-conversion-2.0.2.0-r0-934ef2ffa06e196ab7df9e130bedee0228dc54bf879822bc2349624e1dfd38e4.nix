{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "double-conversion";
        version = "2.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/double-conversion";
      url = "";
      synopsis = "Fast conversion between double precision floating point and text";
      description = "A library that performs fast, accurate conversion between double\nprecision floating point and text.\n\nThis library is implemented as bindings to the C++\n@double-conversion@ library written by Florian Loitsch at Google:\n<https://github.com/floitsch/double-conversion>.\n\nThe 'Text' versions of these functions are about 30 times faster\nthan the default 'show' implementation for the 'Double' type.\n\nThe 'ByteString' versions are /slower/ than the 'Text' versions;\nroughly half the speed.  (This seems to be due to the cost of\nallocating 'ByteString' values via @malloc@.)\n\nAs a final note, be aware that the @bytestring-show@ package is\nabout 50% slower than simply using 'show'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.text)
        ];
        libs = if system.isWindows
          then if system.isX86_64
            then [
              (pkgs."stdc++-6")
              (pkgs."gcc_s_seh-1")
            ]
            else [
              (pkgs."stdc++-6")
              (pkgs."gcc_s_dw2-1")
            ]
          else if system.isOsx
            then [ (pkgs."c++") ]
            else [ (pkgs."stdc++") ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.double-conversion)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
          ];
        };
      };
    };
  }