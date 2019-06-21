{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "json-api-lib"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Todd Mohney";
      maintainer = "Shirren Premaratne";
      author = "Todd Mohney, Shirren Premaratne";
      homepage = "https://github.com/shirren/json-api-lib";
      url = "";
      synopsis = "Utilities for generating JSON-API payloads";
      description = "Provides utilities for deriving JSON payloads conformant to the json-api\nspecification";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
          ];
        };
      tests = {
        "json-api-lib-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.json-api-lib)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.uri-encode)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }