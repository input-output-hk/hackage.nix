{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "datasets"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Nielsen <tanielsen@gmail.com>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/glutamate/datasets";
      url = "";
      synopsis = "Classical data sets for statistics and machine learning";
      description = "Classical machine learning and statistics datasets from\nthe UCI Machine Learning Repository and other sources.\n\nThe datasets package defines two different kinds of datasets:\n\n* small data sets which are directly (or indirectly with `file-embed`)\nembedded in the package as pure values and do not require network or IO to download\nthe data set. This includes Iris, Anscombe and OldFaithful.\n\n* other data sets which need to be fetched over the network with\n`Numeric.Datasets.getDataset` and are cached in a local temporary directory.\n\n> import Numeric.Datasets (getDataset)\n> import Numeric.Datasets.Iris (iris)\n> import Numeric.Datasets.Abalone (abalone)\n>\n> main = do\n>   -- The Iris data set is embedded\n>   print (length iris)\n>   print (head iris)\n>   -- The Abalone dataset is fetched\n>   abas <- getDataset abalone\n>   print (length abas)\n>   print (head abas)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.HTTP)
          (hsPkgs.hashable)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.stringsearch)
          (hsPkgs.file-embed)
          (hsPkgs.aeson)
          (hsPkgs.time)
          ];
        };
      };
    }