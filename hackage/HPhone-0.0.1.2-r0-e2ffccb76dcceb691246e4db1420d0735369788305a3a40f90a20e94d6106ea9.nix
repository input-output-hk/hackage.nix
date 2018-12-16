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
        name = "HPhone";
        version = "0.0.1.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "vijay.hassan@gmail.com,\nraghu.ugare@gmail.com";
      author = "Vijay Anant <vijay.hassan@gmail.com>,\nRaghu Ugare <raghu.ugare@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phone number parser and validator - This is now DEPRECATED!";
      description = "Phone number parser and validator - This is now DEPRECATED!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.phone-metadata)
          (hsPkgs.containers)
          (hsPkgs.regex-pcre)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.HPhone)
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }