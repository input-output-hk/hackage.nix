{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { utilities = false; };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "samtools-iteratee";
        version = "0.2.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "";
      url = "";
      synopsis = "Iteratee interface to SamTools library";
      description = "Iteratee interface to SamTools library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.samtools)
          (hsPkgs.transformers)
          (hsPkgs.iteratee)
        ];
      };
      exes = {
        "bam-filter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.samtools)
            (hsPkgs.transformers)
            (hsPkgs.iteratee)
            (hsPkgs.monads-tf)
          ];
        };
      };
    };
  }