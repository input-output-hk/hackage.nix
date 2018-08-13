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
      specVersion = "1.6";
      identifier = {
        name = "monadic-arrays";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/monadic-arrays/";
      url = "";
      synopsis = "MArray instances for monad transformers";
      description = "MArray instances for monad transformers";
      buildType = "Simple";
    };
    components = {
      "monadic-arrays" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.stm)
        ];
      };
    };
  }