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
        name = "n2o";
        version = "0.11.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "Abstract Protocol Loop";
      description = "Embeddable Application Protocol Loop";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "n2o-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.n2o)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }