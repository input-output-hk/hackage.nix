{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "X11-xft"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xmonad@haskell.org";
      author = "Clemens Fruhwirth";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Xft and some Xrender parts";
      description = "A Haskell bindings to the X Font library. With it, Haskell X11\napplications can access high quality font renderings and provide\nfonts with anti-aliasing and subpixel rendering. The bindings\nalso provide minimal bindings to Xrender parts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        pkgconfig = [
          (pkgconfPkgs."xft" or (errorHandler.pkgConfDepError "xft"))
          ];
        buildable = true;
        };
      };
    }