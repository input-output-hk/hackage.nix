{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "intro";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "2016-2017 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/intro#readme";
        url = "";
        synopsis = "\"Fixed Prelude\" - Mostly total and safe, provides Text and Monad transformers";
        description = "Intro is a modern Prelude which provides safe alternatives\nfor most of the partial functions and follows other\nbest practices, e.g., Text is preferred over String.\nFor String overloading the extension 'OverloadedStrings' should be used.\nContainer types and Monad transformers are provided.\n\nMost important - this Prelude tries to keep things simple.\nThis means it just reexports from base and commonly used libraries\nand adds only very few additional functions.\nEverything is exported explicitly to provide a stable interface\nand to improve the quality of the documentation.";
        buildType = "Simple";
      };
      components = {
        intro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.extra
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.writer-cps-mtl
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.dlist
              hsPkgs.extra
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.writer-cps-mtl
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.cassava
              hsPkgs.contravariant
              hsPkgs.filepath
              hsPkgs.intro
              hsPkgs.lens
              hsPkgs.megaparsec
              hsPkgs.profunctors
              hsPkgs.quickcheck-instances
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          };
        };
      };
    }