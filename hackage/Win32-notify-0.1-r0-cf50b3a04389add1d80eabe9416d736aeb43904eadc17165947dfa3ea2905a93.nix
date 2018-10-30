{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "Win32-notify";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Niklas Broberg, 2008";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "A binding to part of the Win32 library for file notification";
      description = "A binding to part of the Win32 library for file notification";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
          (hsPkgs.directory)
        ];
      };
    };
  }