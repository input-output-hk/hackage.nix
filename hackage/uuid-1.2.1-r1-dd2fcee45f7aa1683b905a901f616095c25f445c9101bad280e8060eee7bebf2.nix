{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "uuid";
        version = "1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 Antoine Latter";
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
        depends  = [
          (hsPkgs.random)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.Crypto)
          (hsPkgs.maccatcher)
          (hsPkgs.time)
          (hsPkgs.base)
        ];
      };
      exes = {
        "benchuuid" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.Crypto)
            (hsPkgs.maccatcher)
            (hsPkgs.time)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.parallel)
            (hsPkgs.mersenne-random-pure64)
          ];
        };
        "testuuid" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.Crypto)
            (hsPkgs.maccatcher)
            (hsPkgs.time)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }