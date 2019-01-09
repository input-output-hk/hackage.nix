{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-scalyr-scribe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Simon Hafner";
      maintainer = "hafnersimon@gmail.com";
      author = "Simon Hafner";
      homepage = "https://github.com/reactormonk/katip-scalyr-scribe#readme";
      url = "";
      synopsis = "A katip scribe for logging to json";
      description = "Please see the README on Github at <https://github.com/reactormonk/katip-scalyr-scribe#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.katip)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "katip-json-scribe-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.katip)
            (hsPkgs.katip-scalyr-scribe)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }