{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "jmonkey"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/jmonkey#readme";
      url = "";
      synopsis = "Jmonkey is very restricted but handy EDSL for JavaScript.";
      description = "Please see the README on GitHub at <https://github.com/opyapeus/jmonkey#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.casing)
          (hsPkgs.free)
          (hsPkgs.jmacro)
          ];
        };
      tests = {
        "jmonkey-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.casing)
            (hsPkgs.free)
            (hsPkgs.jmacro)
            (hsPkgs.jmonkey)
            ];
          };
        };
      };
    }