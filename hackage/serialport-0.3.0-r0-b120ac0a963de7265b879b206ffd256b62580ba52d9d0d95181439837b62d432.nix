{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "serialport"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Joris Putcuyps";
      maintainer = "Joris.Putcuyps@gmail.com";
      author = "Joris Putcuyps";
      homepage = "http://users.skynet.be/jputcu/projects/haskell-serialport/index.html";
      url = "";
      synopsis = "Cross platform serial port library.";
      description = "This library provides a way to interface the serial port from haskell in a cross platform way.\n\nTested on the following platforms:\n\n* Linux (Arch)\n\n* Windows XP 32-bit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if !system.isWindows
          then [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ]
          else [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]);
        buildable = true;
        };
      };
    }