{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "semaphore-plus"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Swansea University 2009";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "Robin Green";
      homepage = "";
      url = "";
      synopsis = "Various concurrency abstractions built on top of semaphores";
      description = "Provides the LightSwitch and the non-starvable Readers-Writer lock\nfrom \"A Little Book of Semaphores\"";
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