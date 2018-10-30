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
        name = "lucid";
        version = "2.9.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2017 Chris Done";
      maintainer = "chrisdone@gmail.com, oleg.grenrus@iki.fi";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/lucid";
      url = "";
      synopsis = "Clear to write, read and edit DSL for HTML";
      description = "Clear to write, read and edit DSL for HTML. See the 'Lucid' module\nfor description and documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lucid)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.bifunctors)
            (hsPkgs.text)
            (hsPkgs.mtl)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.blaze-builder)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.lucid)
          ];
        };
        "bench-io" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.lucid)
          ];
        };
      };
    };
  }