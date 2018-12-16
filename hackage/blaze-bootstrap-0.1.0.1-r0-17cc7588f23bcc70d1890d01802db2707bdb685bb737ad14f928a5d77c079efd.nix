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
        name = "blaze-bootstrap";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2014 - 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/blaze-bootstrap";
      url = "";
      synopsis = "Blaze helper functions for bootstrap pages";
      description = "Simplify building blaze and bootstrap powered pages";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.text)
        ];
      };
    };
  }