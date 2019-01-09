{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yak"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Paul Ogris";
      maintainer = "paul@tsahyt.com";
      author = "Paul Ogris";
      homepage = "https://github.com/tsahyt/yak#readme";
      url = "";
      synopsis = "A strongly typed IRC library";
      description = "See README.rst";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.attoparsec)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          ];
        };
      tests = {
        "yak-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yak)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }