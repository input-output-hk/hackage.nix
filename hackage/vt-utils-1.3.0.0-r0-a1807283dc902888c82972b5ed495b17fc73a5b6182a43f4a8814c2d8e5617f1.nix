{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vt-utils"; version = "1.3.0.0"; };
      license = "MIT";
      copyright = "2018 akashche at redhat.com";
      maintainer = "akashche at redhat.com";
      author = "akashche at redhat.com";
      homepage = "https://github.com/akashche/vt-utils#readme";
      url = "";
      synopsis = "Vector and Text utilities";
      description = "Please see the README on GitHub at <https://github.com/akashche/vt-utils#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HUnit)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          ];
        };
      tests = {
        "vt-utils-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.hashable)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vt-utils)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }