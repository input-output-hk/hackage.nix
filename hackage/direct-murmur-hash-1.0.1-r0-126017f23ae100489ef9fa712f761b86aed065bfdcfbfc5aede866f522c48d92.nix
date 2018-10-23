{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "direct-murmur-hash";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Irene Knapp";
      maintainer = "irene.knapp@icloud.com";
      author = "Irene Knapp <irene.knapp@icloud.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "An implementation of the MurmurHash3 algorithm";
      description = "The Murmur3 hash algorithm is a published, high-performance,\nnon-cryptographic hash.  This implementation of it should be decently fast.";
      buildType = "Simple";
    };
    components = {
      "direct-murmur-hash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }