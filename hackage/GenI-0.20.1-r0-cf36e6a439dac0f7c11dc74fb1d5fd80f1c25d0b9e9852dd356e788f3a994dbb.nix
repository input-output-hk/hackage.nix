{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gui = false; static = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "GenI"; version = "0.20.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "geni-users@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://projects.haskell.org/GenI";
      url = "";
      synopsis = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      description = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
          (hsPkgs.json)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.binary)
          (hsPkgs.split)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck)
          (hsPkgs.test-framework)
          (hsPkgs.utf8-string)
          (hsPkgs.uniplate)
          ];
        };
      exes = {
        "geni" = {
          depends = [
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ] ++ (pkgs.lib).optional (flags.gui) (hsPkgs.wx);
          };
        };
      };
    }