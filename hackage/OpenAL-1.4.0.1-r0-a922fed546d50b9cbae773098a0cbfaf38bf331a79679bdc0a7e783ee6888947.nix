{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "OpenAL"; version = "1.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Self-appointed maintainer wanted";
      author = "";
      homepage = "http://connect.creativelabs.com/openal/";
      url = "";
      synopsis = "A binding to the OpenAL cross-platform 3D audio API";
      description = "A Haskell binding for the OpenAL cross-platform 3D audio API,\nappropriate for use with gaming applications and many other\ntypes of audio applications.  For more information about OpenAL,\nplease see: <http://connect.creativelabs.com/openal/>.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.StateVar)
          (hsPkgs.ObjectName)
          (hsPkgs.Tensor)
          ];
        };
      };
    }