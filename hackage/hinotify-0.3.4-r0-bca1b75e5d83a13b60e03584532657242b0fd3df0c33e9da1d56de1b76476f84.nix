{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hinotify"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin <kolmodin@gmail.com>";
      author = "Lennart Kolmodin";
      homepage = "https://github.com/kolmodin/hinotify.git";
      url = "";
      synopsis = "Haskell binding to inotify";
      description = "\nThis library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      };
    }