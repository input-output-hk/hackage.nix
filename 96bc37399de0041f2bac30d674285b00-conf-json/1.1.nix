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
        name = "conf-json";
        version = "1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/conf-json";
      url = "";
      synopsis = "read, parse json config";
      description = "read, parse json config to a Haskell type";
      buildType = "Simple";
    };
    components = {
      "conf-json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.aeson)
            (hsPkgs.conf-json)
          ];
        };
      };
    };
  }