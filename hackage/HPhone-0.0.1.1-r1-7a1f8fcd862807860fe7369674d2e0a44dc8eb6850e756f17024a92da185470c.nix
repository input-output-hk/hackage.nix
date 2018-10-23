{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HPhone";
        version = "0.0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "vijay.hassan@gmail.com,\nraghu.ugare@gmail.com";
      author = "Vijay Anant <vijay.hassan@gmail.com>,\nRaghu Ugare <raghu.ugare@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phone number parser and validator";
      description = "Phone number parser and validator";
      buildType = "Simple";
    };
    components = {
      "HPhone" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.phone-metadata)
          (hsPkgs.containers)
          (hsPkgs.regex-pcre)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HPhone)
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }