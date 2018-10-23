{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      small_base = true;
      testing = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "xmonad-bluetilebranch";
        version = "0.8.1.3";
      };
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
      "xmonad-bluetilebranch" = {
        depends  = [
          (hsPkgs.X11)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.random)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "xmonad" = {
          depends  = pkgs.lib.optional (flags.testing) (hsPkgs.QuickCheck) ++ pkgs.lib.optional (flags.testing && flags.small_base) (hsPkgs.random);
        };
      };
    };
  }