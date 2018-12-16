{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "uuid";
        version = "1.2.13";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "http://projects.haskell.org/uuid/";
      url = "";
      synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
      description = "This library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.maccatcher)
          (hsPkgs.random)
          (hsPkgs.time)
        ];
      };
      tests = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.random)
          ];
        };
        "testuuid" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
          ];
        };
      };
    };
  }