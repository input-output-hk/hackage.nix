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
        name = "aeson-flatten";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Jiri Marsicek";
      maintainer = "jiri.marsicek@gmail.com";
      author = "Jiri Marsicek";
      homepage = "https://github.com/githubuser/aeson-flatten#readme";
      url = "";
      synopsis = "JSON flatten for Aeson";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "aeson-flatten" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "aeson-flatten-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-flatten)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }