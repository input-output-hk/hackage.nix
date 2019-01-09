{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "motor-reflection"; version = "0.3.0"; };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Reflect on Motor FSM typeclasses to obtain runtime representations";
      description = "Reflect on Motor FSM typeclasses to obtain runtime representations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.motor)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.indexed)
            (hsPkgs.row-types)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.motor)
            (hsPkgs.motor-reflection)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }