{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { yi = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "leksah"; version = "0.8.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2007-2010 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "leksah" = {
          depends = ([
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gtksourceview2" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview2"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."ltk" or ((hsPkgs.pkgs-errors).buildDepError "ltk"))
            (hsPkgs."binary-shared" or ((hsPkgs.pkgs-errors).buildDepError "binary-shared"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."leksah-server" or ((hsPkgs.pkgs-errors).buildDepError "leksah-server"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ] ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or ((hsPkgs.pkgs-errors).buildDepError "yi"));
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32")) ++ (pkgs.lib).optional (system.isOsx) (pkgs."igemacintegration" or ((hsPkgs.pkgs-errors).sysDepError "igemacintegration"));
          buildable = true;
          };
        };
      };
    }