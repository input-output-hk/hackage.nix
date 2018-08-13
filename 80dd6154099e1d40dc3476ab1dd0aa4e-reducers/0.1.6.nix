{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      derivedatatypeable = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reducers";
        version = "0.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/reducers/";
      url = "";
      synopsis = "Semigroups, specialized containers and a general map/reduce framework";
      description = "Semigroups, specialized containers and a general map/reduce framework";
      buildType = "Simple";
    };
    components = {
      "reducers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.parallel)
          (hsPkgs.unordered-containers)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.comonad)
          (hsPkgs.pointed)
          (hsPkgs.keys)
        ];
      };
    };
  }