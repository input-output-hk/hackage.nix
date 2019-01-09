{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-time-range"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sean Chalmers";
      maintainer = "sclhiannan@gmail.com";
      author = "Sean Chalmers";
      homepage = "https://github.com/mankyKitty/haskell-time-range#readme";
      url = "";
      synopsis = "Some useful wrappers and functions for building time ranges";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }