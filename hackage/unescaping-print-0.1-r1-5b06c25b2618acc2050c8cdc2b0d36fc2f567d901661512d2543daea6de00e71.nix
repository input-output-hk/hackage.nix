{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "unescaping-print"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vitaly Bragilevsky <vit.bragilevsky@gmail.com>";
      author = "Vitaly Bragilevsky";
      homepage = "https://github.com/bravit/unescaping-print#readme";
      url = "";
      synopsis = "Tiny package providing unescaping versions of show and print";
      description = "This package solves the problem of escaping all \"non-printable\" symbols by the standard `show` function. It provides the `ushow` and `uprint` functions which replace `show` and `print` from `Prelude`. The function `uprint` is intended to be used as custom printing function in GHCi (with the `-interactive-print` option).";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }