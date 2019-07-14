{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iexcloud"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 David Bouchare, Kristian Sällberg";
      maintainer = "David Bouchare, Kristian Sällberg";
      author = "David Bouchare, Kristian Sällberg";
      homepage = "https://github.com/ksallberg/iexcloud";
      url = "";
      synopsis = "Library for the IEX Trading API";
      description = "Simple library for interacting with the IEX Trading API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "test-hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stocks)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }