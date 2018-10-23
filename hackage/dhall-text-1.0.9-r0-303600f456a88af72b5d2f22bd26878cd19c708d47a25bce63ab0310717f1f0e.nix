{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "dhall-text";
        version = "1.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Template text using Dhall";
      description = "This package provides a @dhall-to-text@ executable that templates text using\nthe Dhall configuration language";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dhall-to-text" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
          ];
        };
      };
    };
  }