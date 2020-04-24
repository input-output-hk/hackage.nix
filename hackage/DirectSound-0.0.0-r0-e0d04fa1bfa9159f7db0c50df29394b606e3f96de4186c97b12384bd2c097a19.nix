{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "DirectSound"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Partial binding to the Microsoft DirectSound API.";
      description = "Partial binding to the Microsoft DirectSound API.\nSee the example program for a simple stereo playback.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."dsound" or ((hsPkgs.pkgs-errors).sysDepError "dsound"))
          ];
        buildable = true;
        };
      };
    }