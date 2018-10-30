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
        name = "tiphys";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2016 Ladislav Lhotka";
      maintainer = "lhotka@nic.cz";
      author = "Ladislav Lhotka";
      homepage = "https://github.com/llhotka/tiphys";
      url = "";
      synopsis = "Navigating and editing JSON data";
      description = "A library that enables navigation in aeson Values and their editing.\n\nThe zipper API is described in the @Data.Aeson.Zipper@ module.\n\n(A note on naming: Tiphys was the steersman and navigator on Jason's Argo.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.errors)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.vector)
            (hsPkgs.tiphys)
          ];
        };
      };
    };
  }