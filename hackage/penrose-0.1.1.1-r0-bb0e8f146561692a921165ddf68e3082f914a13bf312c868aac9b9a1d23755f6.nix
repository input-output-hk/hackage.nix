{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "penrose"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "penrose.team@gmail.com";
      author = "team-penrose";
      homepage = "http://penrose.ink";
      url = "";
      synopsis = "Create beautiful diagrams just by typing mathematical notation in plain text.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.ad)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.websockets)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.pretty-show)
          (hsPkgs.extra)
          (hsPkgs.process)
          (hsPkgs.network)
          (hsPkgs.uuid)
          (hsPkgs.hslogger)
          (hsPkgs.split)
          (hsPkgs.multimap)
          (hsPkgs.directory)
          (hsPkgs.unordered-containers)
          (hsPkgs.pretty-terminal)
          (hsPkgs.scotty)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.ansi-terminal)
          (hsPkgs.parser-combinators)
          (hsPkgs.docopt)
          (hsPkgs.hmatrix)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          ];
        };
      exes = { "penrose" = { depends = [ (hsPkgs.penrose) (hsPkgs.base) ]; }; };
      tests = {
        "penrose-testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.ad)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.websockets)
            (hsPkgs.old-time)
            (hsPkgs.pretty)
            (hsPkgs.extra)
            (hsPkgs.process)
            (hsPkgs.network)
            (hsPkgs.pretty-show)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.directory)
            (hsPkgs.multimap)
            (hsPkgs.pretty-terminal)
            (hsPkgs.scotty)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.ansi-terminal)
            (hsPkgs.array)
            (hsPkgs.uuid)
            (hsPkgs.hslogger)
            (hsPkgs.docopt)
            (hsPkgs.parser-combinators)
            (hsPkgs.hmatrix)
            ];
          };
        };
      };
    }