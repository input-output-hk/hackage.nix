{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yaml-union";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michel@kuhlmanns.info";
      author = "Michel Kuhlmann";
      homepage = "https://github.com/michelk/yaml-overrides.hs";
      url = "";
      synopsis = "Read multiple yaml-files and override fields recursively";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yaml-union" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
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
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }