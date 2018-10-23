{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "murmur-hash";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Thomas Schilling";
      homepage = "http://github.com/nominolo/murmur-hash";
      url = "";
      synopsis = "MurmurHash2 implementation for";
      description = "Implements MurmurHash2, a good, fast, general-purpose,\nnon-cryptographic hashing function.  See\n<http://murmurhash.googlepages.com/> for details.\n\nThis implementation is pure Haskell, so it might be a bit slower\nthan a C FFI binding.";
      buildType = "Simple";
    };
    components = {
      "murmur-hash" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }