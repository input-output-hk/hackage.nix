{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "double-conversion";
          version = "0.2.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/double-conversion";
        url = "";
        synopsis = "Fast conversion between double precision floating point and text";
        description = "A library that performs fast, accurate conversion between double\nprecision floating point and text.\n\nThis library is implemented as bindings to the C++\n@double-conversion@ library written by Florian Loitsch at Google:\n<http://code.google.com/p/double-conversion/>.\n\nThe 'Text' versions of these functions are about 30 times faster\nthan the default 'show' implementation for the 'Double' type.\n\nThe 'ByteString' versions are /slower/ than the 'Text' versions;\nroughly half the speed.  (This seems to be due to the cost of\nallocating 'ByteString' values via @malloc@.)\n\nAs a final note, be aware that the @bytestring-show@ package is\nabout 50% slower than simply using 'show'.";
        buildType = "Simple";
      };
      components = {
        double-conversion = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.text
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11") hsPkgs.integer-gmp) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11")) hsPkgs.integer;
          libs = [ pkgs."stdc++" ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.double-conversion
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
            ];
          };
        };
      };
    }