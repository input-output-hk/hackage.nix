{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      sse42 = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cityhash";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Austin Seipp <mad.one@gmail.com>";
      homepage = "http://github.com/thoughtpolice/hs-cityhash";
      url = "";
      synopsis = "Bindings to CityHash";
      description = "This package implements a binding to the CityHash family of hashing functions (implemented in C++.)\n\nSee <http://code.google.com/p/cityhash/> for more information.\n\nThis package has optional SSE4.2 support. If you build it with the @-fsse42@ flag, the 128-bit\nhashing functions will use an SSE-optimized implementation (which takes advantage of the @crc32@\ninstruction present on recent Intel/AMD machines.) The 64-bit hashing functions are unaffected.";
      buildType = "Simple";
    };
    components = {
      "cityhash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.largeword)
        ];
        libs = [ (pkgs."stdc++") ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.largeword)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.cityhash)
          ];
        };
      };
    };
  }