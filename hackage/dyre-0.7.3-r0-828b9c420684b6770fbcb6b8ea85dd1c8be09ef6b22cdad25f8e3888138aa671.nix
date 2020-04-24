{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dyre"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Will Donnelly";
      maintainer = "Will Donnelly <will.donnelly@gmail.com>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/dyre";
      url = "";
      synopsis = "Dynamic reconfiguration in Haskell";
      description = "Dyre implements dynamic reconfiguration facilities after the\nstyle of Xmonad. Dyre aims to be as simple as possible without\nsacrificing features, and places an emphasis on simplicity of\nintegration with an application.\nA full introduction with a complete example project can be found\nin the documentation for 'Config.Dyre'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
          (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
          (hsPkgs."io-storage" or ((hsPkgs.pkgs-errors).buildDepError "io-storage"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ]);
        buildable = true;
        };
      };
    }