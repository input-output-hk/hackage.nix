{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "extensible-effects-concurrent";
        version = "0.30.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/extensible-effects-concurrent#readme";
      url = "";
      synopsis = "Message passing concurrency as extensible-effect";
      description = "Please see the README on GitHub at <https://github.com/sheyll/extensible-effects-concurrent#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.hostname)
          (hsPkgs.exceptions)
          (hsPkgs.safe-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.extensible-effects)
          (hsPkgs.stm)
          (hsPkgs.transformers-base)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.pretty-types)
          ];
        };
      exes = {
        "extensible-effects-concurrent-example-1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.pretty-types)
            ];
          };
        "extensible-effects-concurrent-example-2" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.pretty-types)
            ];
          };
        "extensible-effects-concurrent-example-3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            (hsPkgs.lens)
            ];
          };
        "extensible-effects-concurrent-example-4" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            ];
          };
        "extensible-effects-concurrent-example-embedded-protocols" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.data-default)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            (hsPkgs.lens)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "extensible-effects-concurrent-test" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.lens)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.hostname)
            (hsPkgs.pretty-types)
            ];
          };
        };
      };
    }