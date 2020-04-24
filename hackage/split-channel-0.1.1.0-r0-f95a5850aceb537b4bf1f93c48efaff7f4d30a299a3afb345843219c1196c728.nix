{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "split-channel"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2012 Leon P Smith";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Control.Concurrent.Chan split into sending and receiving halves.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }