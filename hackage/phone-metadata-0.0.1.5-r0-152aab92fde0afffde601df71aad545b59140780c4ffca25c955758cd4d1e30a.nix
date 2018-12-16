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
        name = "phone-metadata";
        version = "0.0.1.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "raghu.ugare@gmail.com,\nvijay.hassan@gmail.com";
      author = "Raghu Ugare <raghu.ugare@gmail.com>,\nVijay Anant <vijay.hassan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phonenumber Metadata - NOTE: this is now deprecated!";
      description = "Phonenumber Metadata - NOTE: this is now deprecated!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.regex-pcre)
          (hsPkgs.containers)
          (hsPkgs.hxt)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.phone-metadata)
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }