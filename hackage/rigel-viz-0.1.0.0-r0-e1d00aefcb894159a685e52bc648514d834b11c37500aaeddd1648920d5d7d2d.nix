{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "rigel-viz"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marco Zocca, 2019";
      maintainer = "ocramz fripost org";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/rigel-viz";
      url = "";
      synopsis = "A mid-level wrapper for vega-lite";
      description = "A mid-level wrapper for vega-lite. Please see the README for details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rigel-viz)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }