{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "parsers";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/parsers/";
      url = "";
      synopsis = "Simple parsing combinators";
      description = "Simple parsing combinators";
      buildType = "Simple";
    };
    components = {
      "parsers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.charset)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }