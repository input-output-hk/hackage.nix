{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      with_parsec = true;
      with_split = true;
      with_hint = true;
      with_mpd = true;
      with_hlist = true;
      with_template_haskell = true;
      testing = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "xmonad-extras";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel@wagner-home.com, daniel.schoepe@googlemail.com";
        author = "The Daniels Schoepe and Wagner";
        homepage = "http://projects.haskell.org/xmonad-extras";
        url = "";
        synopsis = "Third party extensions for xmonad with wacky dependencies";
        description = "Various modules for xmonad that cannot be added to xmonad-contrib\nbecause of additional dependencies.";
        buildType = "Simple";
      };
      components = {
        xmonad-extras = {
          depends  = (((([
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.X11
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optionals (_flags.with_parsec && _flags.with_split) [
            hsPkgs.parsec
            hsPkgs.split
          ]) ++ pkgs.lib.optionals _flags.with_hint [
            hsPkgs.hint
            hsPkgs.network
          ]) ++ pkgs.lib.optional _flags.with_mpd hsPkgs.libmpd) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.12.1" && _flags.with_template_haskell && _flags.with_hlist) [
            hsPkgs.template-haskell
            hsPkgs.HList
          ];
        };
      };
    }