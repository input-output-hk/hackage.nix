{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "evdev"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Thomas";
      author = "George Thomas";
      homepage = "https://github.com/georgefst/evdev";
      url = "";
      synopsis = "Bindings to libevdev";
      description = "Provides access to the Linux event device interface, with an optional high-level Streamly-based API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
          (hsPkgs."posix-paths" or ((hsPkgs.pkgs-errors).buildDepError "posix-paths"))
          (hsPkgs."rawfilepath" or ((hsPkgs.pkgs-errors).buildDepError "rawfilepath"))
          (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."streamly-fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "streamly-fsnotify"))
          (hsPkgs."paths" or ((hsPkgs.pkgs-errors).buildDepError "paths"))
          ];
        libs = [ (pkgs."evdev" or ((hsPkgs.pkgs-errors).sysDepError "evdev")) ];
        pkgconfig = [
          (pkgconfPkgs."libevdev" or ((hsPkgs.pkgs-errors).pkgConfDepError "libevdev"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }