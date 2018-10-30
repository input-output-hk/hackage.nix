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
      specVersion = "1.10";
      identifier = {
        name = "glue";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "";
      url = "";
      synopsis = "Make better services.";
      description = "Implements common patterns used in building services that run smoothly and efficiently.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.time)
          (hsPkgs.monad-control)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.ekg-core)
          (hsPkgs.text)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.time)
            (hsPkgs.monad-control)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.ekg-core)
            (hsPkgs.text)
            (hsPkgs.async)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.time)
            (hsPkgs.monad-control)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.ekg-core)
            (hsPkgs.text)
            (hsPkgs.async)
          ];
        };
      };
    };
  }