{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "git-freq";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Fujimura Daisuke<me@fujimuradaisuke.com>";
      author = "Fujimura Daisuke<me@fujimuradaisuke.com>";
      homepage = "https://github.com/fujimura/git-freq";
      url = "";
      synopsis = "A Git subcommand to show total addition, deletion per file";
      description = "A Git subcommand to show total addition, deletion per file";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-freq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.io-streams)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.io-streams)
            (hsPkgs.hspec)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }