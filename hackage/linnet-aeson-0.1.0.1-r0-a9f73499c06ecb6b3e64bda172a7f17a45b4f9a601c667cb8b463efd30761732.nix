{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "linnet-aeson"; version = "0.1.0.1"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Sergey Kolbasov";
      maintainer = "whoisliar@gmail.com";
      author = "Sergey Kolbasov";
      homepage = "https://github.com/haskell-linnet/linnet-aeson#readme";
      url = "";
      synopsis = "Aeson JSON support for Linnet";
      description = "Please see the documentation at <http://linnet.io>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.linnet)
          ];
        };
      tests = {
        "linnet-aeson-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.linnet)
            (hsPkgs.linnet-aeson)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            ];
          };
        };
      };
    }