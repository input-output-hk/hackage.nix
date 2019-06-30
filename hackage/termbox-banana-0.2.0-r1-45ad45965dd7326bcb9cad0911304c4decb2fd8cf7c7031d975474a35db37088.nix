{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "termbox-banana"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/termbox-banana";
      url = "";
      synopsis = "reactive-banana + termbox";
      description = "A @reactive-banana@-based interface to writing @termbox@ programs.\n\nSee also the <https://hackage.haskell.org/package/termbox termbox> package for a\nlower-level, imperative interface.\n\n__/NOTE/__: The dependencies listed on Hackage are misleading! Most are only\nused in the examples provided, which are built only if the @build-examples@\nflag is explicitly enabled.\n\nThe actual dependencies of the @termbox-banana@ library are only:\n\n* base\n* reactive-banana\n* termbox";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.reactive-banana) (hsPkgs.termbox) ];
        };
      exes = {
        "termbox-banana-example-echo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reactive-banana)
            (hsPkgs.termbox-banana)
            ];
          };
        "termbox-banana-example-hoogle" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.mtl)
            (hsPkgs.reactive-banana)
            (hsPkgs.stm)
            (hsPkgs.tagsoup)
            (hsPkgs.termbox-banana)
            ];
          };
        };
      };
    }