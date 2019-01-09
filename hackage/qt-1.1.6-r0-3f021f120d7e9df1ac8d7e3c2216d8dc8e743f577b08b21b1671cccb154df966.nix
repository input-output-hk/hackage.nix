{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "qt"; version = "1.1.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
      author = "David Harley";
      homepage = "http://github.com/keerastudios/hsQt";
      url = "";
      synopsis = "Qt bindings";
      description = "Qt bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.OpenGL) ];
        libs = [
          (pkgs."qtc_core")
          (pkgs."qtc_gui")
          (pkgs."qtc_network")
          (pkgs."qtc_opengl")
          (pkgs."qtc_tools")
          (pkgs."qtc_script")
          ];
        };
      };
    }