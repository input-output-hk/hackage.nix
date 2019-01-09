{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { parsec2 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "clevercss"; version = "0.2.3"; };
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
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.mtl) ] ++ [
          (hsPkgs.parsec)
          ];
        };
      exes = { "clevercss" = { depends = [ (hsPkgs.parsec) ]; }; };
      };
    }