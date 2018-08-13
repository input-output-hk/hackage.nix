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
        name = "jenkinsPlugins2nix";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Mateusz Kowalczyk";
      maintainer = "fuuzetsu@fuuzetsu.com";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/jenkinsPlugins2nix#readme";
      url = "";
      synopsis = "Generate nix for Jenkins plugins.";
      description = "Generate nix for Jenkins plugins.";
      buildType = "Simple";
    };
    components = {
      "jenkinsPlugins2nix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.hnix)
          (hsPkgs.http-conduit)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.zip-archive)
        ];
      };
      exes = {
        "jenkinsPlugins2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bimap)
            (hsPkgs.jenkinsPlugins2nix)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "jenkinsPlugins2nix-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.jenkinsPlugins2nix)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }