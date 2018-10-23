{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Win32-notify";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Niklas Broberg, 2008; Mark Dittmer, 2012";
      maintainer = "Pepe Iborra <pepeiborra@gmail.com>";
      author = "Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "A binding to part of the Win32 library for file notification";
      description = "A binding to part of the Win32 library for file notification";
      buildType = "Simple";
    };
    components = {
      "Win32-notify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
          (hsPkgs.directory)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.Win32-notify)
          ];
        };
      };
    };
  }