{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "outsort"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Luis Pedro Coelho <luis@luispedro.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "External sorting package based on Conduit";
      description = "External (disk-backed) sorting package based on Conduit, saving intermediate files to disk and later merging them all.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "SortLines" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-algorithms)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.primitive)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.safeio)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            ];
          };
        };
      };
    }