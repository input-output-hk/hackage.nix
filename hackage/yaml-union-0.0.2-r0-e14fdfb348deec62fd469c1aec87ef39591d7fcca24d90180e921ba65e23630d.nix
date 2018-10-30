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
        name = "yaml-union";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michel@kuhlmanns.info";
      author = "Michel Kuhlmann";
      homepage = "https://github.com/michelk/yaml-union.hs";
      url = "";
      synopsis = "Read multiple yaml-files and override fields recursively";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          (hsPkgs.filepath)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.directory)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "yaml-union" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.yaml)
            (hsPkgs.yaml-union)
            (hsPkgs.directory)
          ];
        };
        "yaml-concat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.yaml)
            (hsPkgs.yaml-union)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.yaml)
            (hsPkgs.yaml-union)
          ];
        };
      };
    };
  }