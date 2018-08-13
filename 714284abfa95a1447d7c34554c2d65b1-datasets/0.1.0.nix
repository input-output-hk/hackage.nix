{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "datasets";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Nielsen <tanielsen@gmail.com>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/glutamate/datasets";
      url = "";
      synopsis = "Classical data sets for statistics and machine learning";
      description = "Classical machine learning and statistics datasets from\nthe UCI Machine Learning Repository and other sources.\n\n> import Numeric.Datasets (getDataset)\n> import Numeric.Datasets.Iris (iris)\n>\n> main = do\n>   irises <- getDataset iris\n>   print (length irises)\n>   print (head irises)";
      buildType = "Simple";
    };
    components = {
      "datasets" = {
        depends  = [
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
        ];
      };
    };
  }