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
      specVersion = "1.18";
      identifier = {
        name = "pregame";
        version = "1.0.3.0";
      };
      license = "MIT";
      copyright = "2014-2016";
      maintainer = "https://github.com/jxv";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/pregame";
      url = "";
      synopsis = "Prelude for applications";
      description = "* Re-exports subsections of common and/or practical libraries\n* Fixing Haskell's historical baggage is out of scope";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.StateVar)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
          (hsPkgs.time)
          (hsPkgs.tuple)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }