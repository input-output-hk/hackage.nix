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
      specVersion = "1.8";
      identifier = {
        name = "whiskers";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter@peterjohnson.io";
      author = "Peter Johnson";
      homepage = "";
      url = "";
      synopsis = "Moustache templates with Template Haskell.";
      description = "";
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