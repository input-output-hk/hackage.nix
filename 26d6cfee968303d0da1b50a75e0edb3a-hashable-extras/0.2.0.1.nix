{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test-doctests = true;
      lib-werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hashable-extras";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/analytics/hashable-extras/";
      url = "";
      synopsis = "Higher-rank Hashable";
      description = "This package provides higher rank analogues to the Hashable data type.\n\nThe need for these sometimes arises in the presence of polymorphic recursion.";
      buildType = "Custom";
    };
    components = {
      "hashable-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.generic-deriving)
          (hsPkgs.hashable)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }