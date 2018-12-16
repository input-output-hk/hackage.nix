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
        name = "clock";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Cetin Sert";
      maintainer = "Cetin Sert <cetin@sertcom.de>";
      author = "Cetin Sert <cetin@sertcom.de>";
      homepage = "<http://sert.homedns.org/hs/clock/>";
      url = "";
      synopsis = "High-resolution clock and timer functions:\nrealtime, monotonic, cputime, etc.";
      description = "A package for convenient access to high-resolution\nclock and timer functions of different operating\nsystems.\n\nIt is planned to consist of two layers. The lower\nlayer will provide direct access to OS-specific\nclock and timer functions like clock_gettime of\nPosix or GetTickCount of Windows and its upper\nlayer shall then provide a common API for all\nsupported systems. Currently only the lower level\nis being developed.\n\n\nPOSIX reference: IEEE Std 1003.1-2008\n<http://www.opengroup.org/onlinepubs/9699919799/>,\n<http://www.opengroup.org/onlinepubs/9699919799/functions/clock_getres.html#>\n\nWINDOWS reference: !! This early version is\nposix-only and does not build on Windows. Support\nwill be added in the future. !!\n\nFor more information, see:\n<http://sert.homedns.org/hs/clock>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }