{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "contstuff-transformers"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "ContStuff instances for transformers and vice-versa";
      description = "This package provides contstuff transformer class instances for the\nmonad transformers from the transformers package as well as\ntransformers class instances for the monad transformers from\ncontstuff.  This makes using both transformer libraries in a single\nproject much more convenient as you get along with a single set of\nlifting functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.contstuff) (hsPkgs.transformers) ];
        };
      };
    }