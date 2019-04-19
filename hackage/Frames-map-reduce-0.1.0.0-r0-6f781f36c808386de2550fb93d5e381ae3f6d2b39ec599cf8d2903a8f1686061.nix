{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "Frames-map-reduce"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "";
      url = "";
      synopsis = "Frames wrapper for map-reduce-folds and some extra folds helpers.";
      description = "Frames-map-reduce provides some helpers for using the map-reduce-folds library with vinyl records and Frames.\nThese include functions for filtering Frames, splitting records into key columns and data columns and\nrecombining key columns with other columns after reducing.\nThis package also provides some tools for building folds over records from folds over each column,\ne.g, summing multiple numerical columns into a multi-column result.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Frames)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.map-reduce-folds)
          (hsPkgs.profunctors)
          (hsPkgs.vinyl)
          (hsPkgs.foldl)
          (hsPkgs.newtype)
          ];
        };
      exes = {
        "AddRowsByLabel" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.foldl)
            (hsPkgs.Frames)
            (hsPkgs.Frames-map-reduce)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.random)
            ];
          };
        };
      };
    }