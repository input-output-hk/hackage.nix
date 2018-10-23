{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "senza";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "An HTML building library without the need for pesky operators.";
      description = "An HTML building library without the need for pesky operators.";
      buildType = "Simple";
    };
    components = {
      "senza" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.text)
        ];
      };
    };
  }