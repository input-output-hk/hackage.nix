{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "binary-literal-qq"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2012 Mathieu Boespflug";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "Extends Haskell with binary literals.";
      description = "The Haskell'98 and Haskell'2010 standards define decimal, octal\nand hexadecimal integer literals. Binary literals are\nconspicuously missing. Here's a quasiquoter to remedy the\nsituation.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      };
    }