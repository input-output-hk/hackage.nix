{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xine";
          version = "0.0.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Joachim Fasting 2010";
        maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
        author = "Joachim Fasting";
        homepage = "http://github.com/joachifm/hxine";
        url = "";
        synopsis = "Bindings to xine-lib";
        description = "A Haskell FFI binding to xine-lib, a multimedia playback engine.\n\nSee <http://xine-project.org> for more information.";
        buildType = "Simple";
      };
      components = {
        xine = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
          libs = [ pkgs.xine ];
        };
      };
    }