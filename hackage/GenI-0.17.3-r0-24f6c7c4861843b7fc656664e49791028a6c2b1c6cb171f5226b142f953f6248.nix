{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      gui = true;
      splitbase = true;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "GenI";
        version = "0.17.3";
      };
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
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.binary)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.process)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "geni" = {
          depends = ([
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.binary)
          ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.containers)
            ]
            else [
              (hsPkgs.base)
            ])) ++ pkgs.lib.optional (flags.gui) (hsPkgs.wx);
        };
      };
    };
  }