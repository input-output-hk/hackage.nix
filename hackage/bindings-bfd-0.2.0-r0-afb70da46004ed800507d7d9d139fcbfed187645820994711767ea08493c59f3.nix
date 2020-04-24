{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "bindings-bfd"; version = "0.2.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2009, 2010 Michael Nelson";
      maintainer = "mcnster@gmail.com";
      author = "Michael Nelson";
      homepage = "http://projects.haskell.org/bindings-bfd/";
      url = "darcs://code.haskell.org/bindings-bfd";
      synopsis = "Bindings for libbfd, a component of the GNU `binutils'";
      description = "These are bindings for `libbfd', a component of the GNU\n`binutils' package.  The bindings lets a Haskell program\nquery the structure of any executable, object, or\nlibrary file format supported by the GNU Project.\nIt also has support for disassembly of code in these\nfiles where appropriate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = [
          (pkgs."bfd" or ((hsPkgs.pkgs-errors).sysDepError "bfd"))
          (pkgs."opcodes" or ((hsPkgs.pkgs-errors).sysDepError "opcodes"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }