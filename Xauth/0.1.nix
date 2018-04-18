{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Xauth";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Spencer Janssen <spencerjanssen@gmail.com>";
        maintainer = "Spencer Janssen <spencerjanssen@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A binding to the X11 authentication library";
        description = "A Haskell binding to the X11 authentication library.";
        buildType = "Simple";
      };
      components = {
        Xauth = {
          depends  = [ hsPkgs.base ];
        };
      };
    }