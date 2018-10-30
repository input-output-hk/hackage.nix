{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "transformers-continue";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Nick Hibberd";
      maintainer = "Nick Hibberd <nick@hibberd.id.au>";
      author = "Nick Hibberd <nick@hibberd.id.au>";
      homepage = "http://github.com/nhibberd/transformers-continue";
      url = "";
      synopsis = "Control flow data type and monad transformer.";
      description = "Control flow abstraction for short-circuiting on success and failure\nas well as continuing with a value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }