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
      specVersion = "1.8";
      identifier = {
        name = "whiskers";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter@peterjohnson.io";
      author = "Peter Johnson";
      homepage = "";
      url = "";
      synopsis = "Mustache templates with Template Haskell.";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
        ];
      };
    };
  }