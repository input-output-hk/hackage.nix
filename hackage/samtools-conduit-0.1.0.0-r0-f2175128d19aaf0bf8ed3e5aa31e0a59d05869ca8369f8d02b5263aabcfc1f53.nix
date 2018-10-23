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
        name = "samtools-conduit";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "http://www.ingolia-lab.org/samtools-tutorial.html";
      url = "";
      synopsis = "Conduit interface to SAM/BAM format files through samtools";
      description = "Conduit interface to SAM/BAM format files through samtools";
      buildType = "Simple";
    };
    components = {
      "samtools-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.samtools)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
        ];
      };
    };
  }