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
        name = "aeson-prefix";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Jiri Marsicek";
      maintainer = "jiri.marsicek@gmail.com";
      author = "Jiri Marsicek";
      homepage = "https://github.com/j1r1k/aeson-prefix#readme";
      url = "";
      synopsis = "Hiearchical prefixing for aeson";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "aeson-prefix-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-prefix)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
    };
  }