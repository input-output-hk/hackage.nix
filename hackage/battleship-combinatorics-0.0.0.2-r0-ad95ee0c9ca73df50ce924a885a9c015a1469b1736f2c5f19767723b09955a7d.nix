{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "battleship-combinatorics";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/battleship-combinatorics/";
      url = "";
      synopsis = "Compute number of possible arrangements in the battleship game";
      description = "Compute number of possible arrangements in the battleship game\nwith different methods.\n\n<https://en.wikipedia.org/wiki/Battleship_(game)>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.pooled-io)
          (hsPkgs.combinatorial)
          (hsPkgs.set-cover)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.storable-record)
          (hsPkgs.storablevector)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.non-empty)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.prelude-compat)
          (hsPkgs.base)
        ];
      };
      exes = {
        "battleship-combinatorics" = {
          depends = [
            (hsPkgs.battleship-combinatorics)
            (hsPkgs.containers)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "battleship-combinatorics-test" = {
          depends = [
            (hsPkgs.battleship-combinatorics)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
          ];
        };
      };
    };
  }