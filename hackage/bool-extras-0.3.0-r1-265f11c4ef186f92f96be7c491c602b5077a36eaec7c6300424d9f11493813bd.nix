{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bool-extras"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Erik Hesselink,\nJeroen Leeuwestein,\nTom Lokhorst,\nSebastiaan Visser";
      homepage = "http://tom.lokhorst.eu/bool-extras";
      url = "";
      synopsis = "A fold function for Bool";
      description = "The `bool' function allows folding over boolean values.\n\nThis is comparable to the `maybe' or `either' functions\non their respective types.\n\nThe `bool' function is a replacement for the build-in\n@if then else@-syntax. However, since it is a function, it\ncan be partially applied and passed around to higher order\nfunctions, like so:\n\n> ghci> :m + Data.Bool.Extras\n> ghci> let yesOrNo = bool \"no\" \"yes\"\n> ghci> map yesOrNo [True, False, True]\n> [\"yes\", \"no\", \"yes\"]\n\nNote that the arguments to `bool' are in the opposite order\nof the @if then else@-syntax; First the false value, then\nthe true value, and finally the boolean.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }