{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "split-tchan"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "STM's TChan split into sending and receiving halves.";
      description = "STM's TChan split into sending and receiving halves.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) (hsPkgs.stm) ]; }; };
    }