{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "githud"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Grégory Bataille 2015-2019";
      maintainer = "gregory.bataille@gmail.com";
      author = "Grégory Bataille";
      homepage = "http://github.com/gbataille/gitHUD#readme";
      url = "";
      synopsis = "More efficient replacement to the great git-radar";
      description = "Please see README.md (used to be gitHUD)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.daemons)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          ];
        };
      exes = {
        "githud" = { depends = [ (hsPkgs.base) (hsPkgs.githud) ]; };
        "githudd" = { depends = [ (hsPkgs.base) (hsPkgs.githud) ]; };
        };
      tests = {
        "githud-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.daemons)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.githud)
            ];
          };
        };
      };
    }