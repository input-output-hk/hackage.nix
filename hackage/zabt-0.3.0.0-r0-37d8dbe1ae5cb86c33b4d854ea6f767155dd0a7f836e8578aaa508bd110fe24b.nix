{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "zabt"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joseph Tel Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Tel Abrahamson <me@jspha.com>";
      homepage = "https://github.com/tel/hs-zabt#readme";
      url = "";
      synopsis = "Arity-typed abstract binding trees";
      description = "Arity-typed abstract binding trees. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "zabt-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zabt)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }