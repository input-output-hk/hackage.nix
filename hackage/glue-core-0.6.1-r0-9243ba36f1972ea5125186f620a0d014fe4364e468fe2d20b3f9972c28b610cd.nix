{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "glue-core"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "";
      url = "";
      synopsis = "Make better services and clients.";
      description = "Combinator library to enhance the general functionality of services and clients.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.glue-common)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.time)
          (hsPkgs.monad-control)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          ];
        };
      tests = {
        "glue-core-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.glue-common)
            (hsPkgs.glue-core)
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
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }