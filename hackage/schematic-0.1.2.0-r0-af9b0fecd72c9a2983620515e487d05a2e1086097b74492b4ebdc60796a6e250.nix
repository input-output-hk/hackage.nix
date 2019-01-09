{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "schematic"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "";
      url = "";
      synopsis = "JSON-biased spec and validation tool";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.regex-compat)
          (hsPkgs.scientific)
          (hsPkgs.singletons)
          (hsPkgs.smallcheck)
          (hsPkgs.smallcheck-series)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.validationt)
          (hsPkgs.vector)
          (hsPkgs.vinyl)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.regex-compat)
            (hsPkgs.schematic)
            (hsPkgs.smallcheck)
            (hsPkgs.smallcheck-series)
            (hsPkgs.singletons)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.validationt)
            (hsPkgs.vinyl)
            ];
          };
        };
      };
    }