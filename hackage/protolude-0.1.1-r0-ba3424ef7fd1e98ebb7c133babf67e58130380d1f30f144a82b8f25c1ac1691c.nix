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
        name = "protolude";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2016 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/protolude";
      url = "";
      synopsis = "A sensible set of defaults for writing custom Preludes.";
      description = "A sensible set of defaults for writing custom Preludes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.async)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.semiring-simple)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.string-conv)
          (hsPkgs.bytestring)
        ];
      };
    };
  }