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
        name = "servant-zeppelin";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Martin Allen, Ben Weitzman";
      maintainer = "martin[dot]allen26[at]gmail.com";
      author = "Martin Allen, Ben Weitzman";
      homepage = "https://github.com/martyall/servant-zeppelin#readme";
      url = "";
      synopsis = "Types and definitions of servant-zeppelin combinators.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "servant-zeppelin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.singletons)
        ];
      };
    };
  }