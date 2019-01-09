{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "acme-dont"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2009, Gracjan Polak";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A don't construct";
      description = "The Acme.Dont module provides a don't command, which is the\nopposite of Haskell's built-in do.  It is used exactly like the do\nmonadic construct except that, instead of executing the block it\ncontrols, it... well... doesn't.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }