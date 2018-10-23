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
        name = "iterio-server";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>";
      author = "Amit Levy";
      homepage = "https://github.com/alevy/iterio-server";
      url = "";
      synopsis = "Library for building servers with IterIO";
      description = "This module contains a set of generic building blocks for building servers with IterIO.";
      buildType = "Simple";
    };
    components = {
      "iterio-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ListLike)
          (hsPkgs.monadIO)
          (hsPkgs.mtl)
          (hsPkgs.iterIO)
          (hsPkgs.network)
          (hsPkgs.split)
          (hsPkgs.unix)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
        ];
      };
    };
  }