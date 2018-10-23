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
        name = "whiskers";
        version = "0.1.0.2.20141027";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter@peterjohnson.io";
      author = "Peter Johnson";
      homepage = "";
      url = "";
      synopsis = "Moustache templates with Template Haskell.";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "whiskers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
        ];
      };
    };
  }