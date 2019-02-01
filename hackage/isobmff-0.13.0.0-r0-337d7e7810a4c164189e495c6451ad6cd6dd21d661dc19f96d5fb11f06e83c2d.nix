{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tracing = true; fullbenchmarks = true; complextests = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "isobmff"; version = "0.13.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff#readme";
      url = "";
      synopsis = "A parser and generator for the ISO-14496-12/14 base media file format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.vector)
          (hsPkgs.singletons)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.function-builder)
          (hsPkgs.text)
          (hsPkgs.type-spec)
          (hsPkgs.mtl)
          (hsPkgs.pretty-types)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.isobmff)
            (hsPkgs.binary)
            (hsPkgs.text)
            (hsPkgs.type-spec)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.tagged)
            (hsPkgs.pretty-types)
            ];
          };
        };
      benchmarks = {
        "bit-records" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.isobmff)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.tagged)
            (hsPkgs.type-spec)
            ];
          };
        };
      };
    }