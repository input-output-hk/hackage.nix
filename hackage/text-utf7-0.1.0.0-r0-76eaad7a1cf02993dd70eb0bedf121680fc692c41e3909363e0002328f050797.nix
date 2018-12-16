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
        name = "text-utf7";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Daniel P. Wright";
      maintainer = "dani@dpwright.com";
      author = "Daniel P. Wright";
      homepage = "https://github.com/dpwright/text-utf7";
      url = "";
      synopsis = "UTF-7 encoding/decoding for Data.Text";
      description = "@text-utf7@ provides encoding/decoding functions for UTF-7\nencoded strings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ] ++ [ (hsPkgs.bytestring) ];
      };
      tests = {
        "utf7" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }