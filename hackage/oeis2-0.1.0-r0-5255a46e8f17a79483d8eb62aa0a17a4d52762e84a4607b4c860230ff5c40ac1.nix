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
        name = "oeis2";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 okkey";
      maintainer = "a23b23c23d23e@gmail.com";
      author = "okkey";
      homepage = "https://github.com/23_prime/oeis2#readme";
      url = "";
      synopsis = "Interface for Online Encyclopedia of Integer Sequences (OEIS).";
      description = "Please see the README on GitHub at <https://github.com/23_prime/oeis2#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "oeis2-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.oeis2)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }