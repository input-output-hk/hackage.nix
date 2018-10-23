{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal2nix";
        version = "1.73";
      };
      license = "BSD-3-Clause";
      copyright = "Peter Simons, Andres Loeh";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, Andres Loeh";
      homepage = "http://github.com/NixOS/cabal2nix";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions";
      description = "This package is no longer maintained on Hackage. Users of Nix can\ninstall the latest version by running:\n\n> nix-env -i cabal2nix";
      buildType = "Custom";
    };
    components = {
      exes = {
        "cabal2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.pretty)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.hackage-db)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
          ];
        };
        "hackage4nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.pretty)
            (hsPkgs.Cabal)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hackage-db)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.deepseq)
          ];
        };
      };
      tests = {
        "doctest-cabal2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }