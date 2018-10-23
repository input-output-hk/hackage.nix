{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "AFSM";
        version = "0.1.3.1";
      };
      license = "MIT";
      copyright = "Hanzhong Xu, Meng Meng";
      maintainer = "hanzh.xu@gmail.com";
      author = "Hanzhong Xu, Meng Meng";
      homepage = "https://github.com/PseudoPower/AFSM";
      url = "";
      synopsis = "Arrowized functional state machines";
      description = "Arrowized functional state machines.\nThis module is inspired by Yampa and the paper\n/Functional Reactive Programming, Continued*/ written by\nHenrik Nilsson, Antony Courtney and John Peterson.";
      buildType = "Simple";
    };
    components = {
      "AFSM" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }