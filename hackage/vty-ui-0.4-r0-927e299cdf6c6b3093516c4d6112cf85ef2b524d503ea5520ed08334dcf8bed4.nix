{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "vty-ui"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://codevine.org/vty-ui/";
      url = "";
      synopsis = "A user interface composition library for Vty";
      description = "An extensible library of user interface widgets\nfor composing and laying out Vty user interfaces.\nThis library provides a collection of primitives\nfor building and composing widgets and creating\nVty Images.  This library is intended to make\nnon-trivial user interfaces trivial to express\nand modify without having to worry about terminal\nsize.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vty)
          (hsPkgs.containers)
          (hsPkgs.pcre-light)
          ];
        };
      exes = {
        "vty-ui-tests" = { depends = [ (hsPkgs.QuickCheck) ]; };
        "vty-ui-demo" = { depends = [ (hsPkgs.mtl) ]; };
        };
      };
    }