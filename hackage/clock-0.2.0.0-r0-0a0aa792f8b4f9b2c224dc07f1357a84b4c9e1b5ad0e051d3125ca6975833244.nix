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
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Cetin Sert 2009-2010, (c) Eugene Kirpichov 2010";
      maintainer = "Cetin Sert <cetin@sertcom.de>";
      author = "Cetin Sert <cetin@sertcom.de>, Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://corsis.sourceforge.net/index.php/Haskell/Clock";
      url = "";
      synopsis = "High-resolution clock and timer functions:\nrealtime, monotonic, cputime, etc.";
      description = "A package for convenient access to high-resolution\nclock and timer functions of different operating\nsystems.\n\nIt is planned to consist of two layers. The lower\nlayer will provide direct access to OS-specific\nclock and timer functions like clock_gettime of\nPosix or GetTickCount of Windows and its upper\nlayer shall then provide a common API for all\nsupported systems. Currently only the lower level\nis being developed.\n\n\nPOSIX reference: IEEE Std 1003.1-2008\n<http://www.opengroup.org/onlinepubs/9699919799/>,\n<http://www.opengroup.org/onlinepubs/9699919799/functions/clock_getres.html#>\n\nWINDOWS reference: ...\n\nFor more information, see:\n<http://corsis.sourceforge.net/index.php/Haskell/Clock>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }