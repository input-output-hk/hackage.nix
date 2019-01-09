{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "uuid"; version = "1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 Antoine Latter";
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
          (hsPkgs.random)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.Crypto)
          (hsPkgs.maccatcher)
          (hsPkgs.time)
          (hsPkgs.base)
          ];
        };
      tests = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.random)
            (hsPkgs.criterion)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            ];
          };
        "testuuid" = {
          depends = [
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }