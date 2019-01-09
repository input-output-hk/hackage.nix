{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hinotify"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin <kolmodin@gentoo.org>";
      author = "Lennart Kolmodin";
      homepage = "http://haskell.org/~kolmodin/code/hinotify/README.html";
      url = "";
      synopsis = "Haskell binding to INotify";
      description = "\nThis library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified.\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.unix) ] ++ (if flags.split-base
          then [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.directory) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }