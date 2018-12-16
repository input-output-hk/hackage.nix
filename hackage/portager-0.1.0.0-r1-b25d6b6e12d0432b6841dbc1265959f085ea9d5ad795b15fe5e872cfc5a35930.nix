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
        name = "portager";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jiri Marsicek";
      maintainer = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      author = "Jiri Marsicek";
      homepage = "https://github.com/j1r1k/portager";
      url = "";
      synopsis = "DSL for configuring Gentoo portage";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "portager-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.portager)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
    };
  }