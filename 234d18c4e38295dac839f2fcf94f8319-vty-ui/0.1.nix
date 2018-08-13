{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "vty-ui";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://repos.codevine.org/vty-ui/";
      url = "";
      synopsis = "A user interface composition library for Vty";
      description = "An extensible library of user interface widgets\nfor composing and laying out Vty user interfaces.\nThis library provides a collection of widgets and\na type class for rendering widgets to Vty Images.";
      buildType = "Simple";
    };
    components = {
      "vty-ui" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vty)
        ];
      };
      exes = {
        "vty-ui-demo" = {
          depends  = [ (hsPkgs.mtl) ];
        };
      };
    };
  }