{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "BiobaseENA"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/BiobaseENA";
      url = "";
      synopsis = "European Nucleotide Archive data";
      description = "Provides data (and later API) access to the European Nucleotide Archive.\n\n* Taxonomy Service / Translation tables (hardcoded)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.BiobaseTypes)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.BiobaseTypes)
            (hsPkgs.BiobaseENA)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            ];
          };
        };
      };
    }