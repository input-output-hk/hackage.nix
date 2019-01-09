{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "blaze-bootstrap"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "http://github.com/agrafix/blaze-bootstrap";
      url = "";
      synopsis = "Blaze helper functions for bootstrap pages";
      description = "Simplify building blaze and bootstrap powered pages";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.blaze-html) (hsPkgs.text) ];
        };
      };
    }