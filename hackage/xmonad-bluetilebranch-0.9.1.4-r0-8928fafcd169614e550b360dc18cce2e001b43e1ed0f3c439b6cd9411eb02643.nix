{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "xmonad-bluetilebranch"; version = "0.9.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "This is a modified version of xmonad used by Bluetile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.X11)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.extensible-exceptions)
            ]
          else [ (hsPkgs.base) ]);
        };
      exes = {
        "xmonad" = {
          depends = (pkgs.lib).optional (flags.testing) (hsPkgs.QuickCheck) ++ (pkgs.lib).optionals (flags.testing && flags.small_base) [
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.X11)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.extensible-exceptions)
            ];
          };
        };
      };
    }