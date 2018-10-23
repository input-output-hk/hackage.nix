{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "clevercss";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "georg@python.org";
      author = "Georg Brandl";
      homepage = "http://sandbox.pocoo.org/clevercss-hs/";
      url = "";
      synopsis = "A CSS preprocessor";
      description = "CleverCSS is a CSS preprocessing library that allows defining variables and nesting selectors so that you don't need to Repeat Yourself.";
      buildType = "Simple";
    };
    components = {
      "clevercss" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell98)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.haskell98)
          ];
      };
      exes = { "clevercss" = {}; };
    };
  }