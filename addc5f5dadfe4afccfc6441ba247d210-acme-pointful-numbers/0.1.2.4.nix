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
      specVersion = "1.10";
      identifier = {
        name = "acme-pointful-numbers";
        version = "0.1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antonio Nikishaev <a@lelf.me>";
      author = "Antonio Nikishaev";
      homepage = "";
      url = "";
      synopsis = "Make more than one point in numeric literals";
      description = "Allows use to write more pointful than usual numbers. Example: @3.14.159@.\n\nThis is very useful for various obvious undisclosed reasons.";
      buildType = "Simple";
    };
    components = {
      "acme-pointful-numbers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }