{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "smap"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Will Yager";
      maintainer = "will@yager.io";
      author = "Will Yager";
      homepage = "https://github.com/wyager/smap#readme";
      url = "";
      synopsis = "A command line tool for working with sets and maps";
      description = "Please see the README on GitHub at <https://github.com/wyager/smap>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.optparse-applicative)
          (hsPkgs.resourcet)
          (hsPkgs.siphash)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "smap" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.siphash)
            (hsPkgs.smap)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "smap-test" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.siphash)
            (hsPkgs.smap)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }