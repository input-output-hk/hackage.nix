{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-doctests = true;
      lib-werror = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hash";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/analytics/hash/";
      url = "";
      synopsis = "Hashing tools";
      description = "Hashing tools";
      buildType = "Custom";
    };
    components = {
      "hash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.generic-deriving)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }