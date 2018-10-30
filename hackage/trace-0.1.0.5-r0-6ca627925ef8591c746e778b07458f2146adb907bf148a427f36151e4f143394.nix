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
      specVersion = "1.10";
      identifier = {
        name = "trace";
        version = "0.1.0.5";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014-2015 AlephCloud, Inc";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "A monad transformer for tracing provenience of errors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.kan-extensions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
        ];
      };
    };
  }