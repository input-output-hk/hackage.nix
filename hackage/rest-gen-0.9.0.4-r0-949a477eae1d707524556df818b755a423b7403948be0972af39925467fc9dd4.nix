{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rest-gen";
        version = "0.9.0.4";
      };
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
      "rest-gen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HStringTemplate)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.aeson-utils)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.code-builder)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.fclabels)
          (hsPkgs.filepath)
          (hsPkgs.generic-aeson)
          (hsPkgs.happstack-server)
          (hsPkgs.hslogger)
          (hsPkgs.hxt)
          (hsPkgs.json-schema)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.regular)
          (hsPkgs.rest-core)
          (hsPkgs.rest-types)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "rest-gen-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.rest-core)
            (hsPkgs.rest-gen)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }