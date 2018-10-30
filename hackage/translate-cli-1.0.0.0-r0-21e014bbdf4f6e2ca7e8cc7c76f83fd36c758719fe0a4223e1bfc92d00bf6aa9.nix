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
        name = "translate-cli";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "2017";
      maintainer = "as@99n.de";
      author = "andys8";
      homepage = "https://github.com/andys8/translate-cli#readme";
      url = "";
      synopsis = "Translation cli tool";
      description = "Translation cli tool";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.aeson-lens)
        ];
      };
      exes = {
        "translate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.translate-cli)
            (hsPkgs.turtle)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "translate-cli-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.translate-cli)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }