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
        version = "0.0.2.1";
      };
      license = "MIT";
      copyright = "2016 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/intro#readme";
      url = "";
      synopsis = "Total Prelude with Text and Monad transformers";
      description = "Modern Prelude which provides safe alternatives for most of the partial functions. Text is preferred over String. Container types and Monad transformers are provided. Most important - this Prelude avoids fanciness. This means it just reexports from base and commonly used libraries and doesn\\'t invent its own stuff. Everything is in one file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.extra)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.string-conversions)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.writer-cps-mtl)
        ];
      };
    };
  }