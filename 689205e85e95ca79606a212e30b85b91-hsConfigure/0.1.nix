{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsConfigure";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo";
        homepage = "http://homepage3.nifty.com/salamander/second/projects/hsConfigure/index.xhtml";
        url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/hsConfigure-0.1.tar.gz";
        synopsis = "By using this package, you can make application configurable.";
        description = "I inspired by xmonad. Xmonad is configurable by using user's own main.\nThis package make your application configurable like xmonad.";
        buildType = "Simple";
      };
      components = {
        hsConfigure = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
      };
    }