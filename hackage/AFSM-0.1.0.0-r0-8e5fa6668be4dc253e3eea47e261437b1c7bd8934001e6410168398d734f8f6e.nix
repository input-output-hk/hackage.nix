{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "AFSM"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "hanzh.xu@gmail.com";
      author = "Hanzhong Xu";
      homepage = "https://github.com/FiveEye/AFSM";
      url = "";
      synopsis = "Arrowized functional state machines";
      description = "Arrowized functional state machines.\nThis module is inspired by Yampa and the paper\n/Functional Reactive Programming, Continued*/ written by\nHenrik Nilsson, Antony Courtney and John Peterson.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }