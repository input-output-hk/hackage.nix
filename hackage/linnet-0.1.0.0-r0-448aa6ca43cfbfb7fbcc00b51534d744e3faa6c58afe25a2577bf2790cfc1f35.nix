{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "linnet"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Sergey Kolbasov";
      maintainer = "whoisliar@gmail.com";
      author = "Sergey Kolbasov";
      homepage = "https://github.com/haskell-linnet/linnet#readme";
      url = "";
      synopsis = "Lightweight library for building HTTP API";
      description = "Please see the documentation at <http://linnet.io>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-conversion)
          (hsPkgs.case-insensitive)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.io-streams)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uri-encode)
          (hsPkgs.utf8-string)
          (hsPkgs.wai)
          (hsPkgs.warp)
          ];
        };
      tests = {
        "linnet-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.case-insensitive)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.io-streams)
            (hsPkgs.linnet)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uri-encode)
            (hsPkgs.utf8-string)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }