{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "temporary"; version = "1.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2003-2006, Isaac Jones\n(c) 2005-2009, Duncan Coutts";
      maintainer = "Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>, Roman Cheplyaka <roma@ro-che.info>";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>";
      homepage = "http://www.github.com/feuerbach/temporary";
      url = "";
      synopsis = "Portable temporary file and directory support for Windows and Unix, based on code from Cabal";
      description = "The functions for creating temporary files and directories in the base library are quite limited. The unixutils\npackage contains some good ones, but they aren't portable to Windows.\nThis library just repackages the Cabal implementations of its own temporary file and folder functions so that\nyou can use them without linking against Cabal or depending on it being installed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      };
    }