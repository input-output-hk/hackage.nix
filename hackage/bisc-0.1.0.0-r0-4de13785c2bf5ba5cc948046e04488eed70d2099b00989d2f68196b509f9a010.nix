{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bisc"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2018 Michele Guerini Rocco";
      maintainer = "rnhmjoj@inventati.org";
      author = "Michele Guerini Rocco";
      homepage = "";
      url = "";
      synopsis = "A small tool that clears qutebrowser cookies.";
      description = "Bisc clears qutebrowser cookies and javascript local storage\nby domains, stored in a whitelist.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bisc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.selda)
            (hsPkgs.selda-sqlite)
            (hsPkgs.xdg-basedir)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            ];
          };
        };
      };
    }