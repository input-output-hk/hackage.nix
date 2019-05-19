{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "swagger2"; version = "2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016, GetShopTV";
      maintainer = "nickolay@getshoptv.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/GetShopTV/swagger2";
      url = "";
      synopsis = "Swagger 2.0 data model";
      description = "This library is inteded to be used for decoding and encoding Swagger 2.0 API\nspecifications as well as manipulating them.\n\nThe original Swagger 2.0 specification is available at http://swagger.io/specification/.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.aeson)
          (hsPkgs.generics-sop)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid-types)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.swagger2)
            (hsPkgs.aeson)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.insert-ordered-containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson-qq)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }