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
      specVersion = "1.10";
      identifier = {
        name = "intro";
        version = "0.5.1.0";
      };
      license = "MIT";
      copyright = "2016-2017 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/intro#readme";
      url = "";
      synopsis = "Safe and minimal prelude";
      description = "Intro is a modern Prelude which provides safe alternatives\nfor most of the partial functions and follows other\nbest practices, e.g., Text is preferred over String.\nFor String overloading the extension 'OverloadedStrings' should be used.\nContainer types and Monad transformers are provided.\n\nMost important - this Prelude tries to keep things simple.\nThis means it just reexports from base and commonly used libraries\nand adds only very few additional functions.\nEverything is exported explicitly to provide a stable interface\nand to improve the quality of the documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.extra)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.writer-cps-mtl)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.1") (hsPkgs.bifunctors);
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dlist)
            (hsPkgs.extra)
            (hsPkgs.hashable)
            (hsPkgs.intro)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.writer-cps-mtl)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.1") (hsPkgs.bifunctors);
        };
      };
    };
  }