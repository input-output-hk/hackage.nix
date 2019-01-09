{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "rest-gen"; version = "0.16.1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Documentation and client generation from rest definition.";
      description = "Documentation and client generation from rest definition.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.HStringTemplate)
          (hsPkgs.aeson)
          (hsPkgs.blaze-html)
          (hsPkgs.code-builder)
          (hsPkgs.directory)
          (hsPkgs.fclabels)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hxt)
          (hsPkgs.json-schema)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.rest-core)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.scientific)
          (hsPkgs.split)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.uniplate)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "rest-gen-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.fclabels)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.rest-core)
            (hsPkgs.rest-gen)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }