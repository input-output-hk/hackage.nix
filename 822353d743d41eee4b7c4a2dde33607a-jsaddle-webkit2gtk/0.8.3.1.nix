{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jsaddle-webkit2gtk";
        version = "0.8.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "Interface for JavaScript that works with GHCJS and GHC";
      description = "This package provides an EDSL for calling JavaScript that\ncan be used both from GHCJS and GHC.  When using GHC\nthe application is run using Warp and WebSockets to\ndrive a small JavaScipt helper.";
      buildType = "Simple";
    };
    components = {
      "jsaddle-webkit2gtk" = {
        depends  = ([
          (hsPkgs.base)
        ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-webkit2)
          (hsPkgs.gi-javascriptcore)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.jsaddle)
          (hsPkgs.text)
          (hsPkgs.webkit2gtk3-javascriptcore)
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }