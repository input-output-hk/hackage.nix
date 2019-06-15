{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lie"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felixspringer149@gmail.com";
      author = "Felix Springer";
      homepage = "https://github.com/jumper149/haskell-lie";
      url = "";
      synopsis = "Lie Algebras";
      description = "A library that implements Lie Algebras";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      exes = { "Lie" = { depends = [ (hsPkgs.base) (hsPkgs.lie) ]; }; };
      };
    }