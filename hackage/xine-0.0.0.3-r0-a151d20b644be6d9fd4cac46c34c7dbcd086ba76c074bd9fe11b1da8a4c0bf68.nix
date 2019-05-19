{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xine"; version = "0.0.0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Joachim Fasting 2011";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "Joachim Fasting";
      homepage = "http://github.com/joachifm/hxine";
      url = "";
      synopsis = "Bindings to xine-lib";
      description = "A Haskell FFI binding to xine-lib, a multimedia playback engine.\n\nSee <http://xine-project.org> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) ];
        libs = [ (pkgs."xine") ];
        pkgconfig = [ (pkgconfPkgs."libxine") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      };
    }