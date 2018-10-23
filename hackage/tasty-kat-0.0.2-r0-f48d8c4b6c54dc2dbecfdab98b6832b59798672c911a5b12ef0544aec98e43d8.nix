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
        name = "tasty-kat";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/tasty-kat";
      url = "";
      synopsis = "Known Answer Tests (KAT) framework for tasty";
      description = "Tests running from simple KATs file (different formats/helper supported)";
      buildType = "Simple";
    };
    components = {
      "tasty-kat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.tasty)
        ];
      };
      tests = {
        "test-tasty-kat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-kat)
          ];
        };
      };
    };
  }