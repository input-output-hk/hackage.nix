{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "rest-core"; version = "0.27.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Rest API library.";
      description = "Rest API library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-utils)
          (hsPkgs.bytestring)
          (hsPkgs.cgi)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.fclabels)
          (hsPkgs.hxt)
          (hsPkgs.hxt-pickle-utils)
          (hsPkgs.json-schema)
          (hsPkgs.mtl)
          (hsPkgs.multipart)
          (hsPkgs.random)
          (hsPkgs.rest-types)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.tostring)
          (hsPkgs.transformers)
          (hsPkgs.uri-encode)
          (hsPkgs.utf8-string)
          (hsPkgs.uuid)
          ];
        };
      tests = {
        "rest-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.rest-core)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }