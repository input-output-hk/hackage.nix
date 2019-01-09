{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nirum"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Nirum team";
      maintainer = "Nirum team";
      author = "Nirum team";
      homepage = "https://github.com/spoqa/nirum";
      url = "";
      synopsis = "IDL compiler and RPC/distributed object framework for\nmicroservices";
      description = "Nirum is an IDL compiler and RPC/distributed object\nframework for microservices, built on top of the modern\nWeb server technologies such as RESTful HTTP and JSON.\n\nYou can find how its IDL looks like from source codes in\nthe examples/ directory.\n\nSee also README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.interpolatedstring-perl6)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.semver)
          (hsPkgs.text)
          ];
        };
      exes = {
        "nirum" = { depends = [ (hsPkgs.base) (hsPkgs.nirum) ]; };
        "nirum-static" = { depends = [ (hsPkgs.base) (hsPkgs.nirum) ]; };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-meta)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.nirum)
            (hsPkgs.process)
            (hsPkgs.semigroups)
            (hsPkgs.semver)
            (hsPkgs.temporary)
            (hsPkgs.text)
            ];
          };
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      };
    }