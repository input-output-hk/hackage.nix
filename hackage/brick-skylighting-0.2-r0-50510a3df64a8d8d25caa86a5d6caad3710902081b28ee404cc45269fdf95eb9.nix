{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "brick-skylighting";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Jonathan Daugherty 2018";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty";
      homepage = "https://github.com/jtdaugherty/brick-skylighting/";
      url = "";
      synopsis = "Show syntax-highlighted text in your Brick UI";
      description = "This package provides a module to use Skylighting to perform\nsyntax highlighting and display the results in Brick-based\ninterfaces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.brick)
          (hsPkgs.vty)
          (hsPkgs.skylighting-core)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "brick-skylighting-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.brick-skylighting)
            (hsPkgs.vty)
            (hsPkgs.skylighting-core)
            (hsPkgs.text)
          ];
        };
      };
    };
  }