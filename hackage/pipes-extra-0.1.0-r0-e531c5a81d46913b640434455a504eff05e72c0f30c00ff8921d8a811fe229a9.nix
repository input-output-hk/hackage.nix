{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pipes-extra";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "https://github.com/pcapriotti/pipes-extra";
      url = "";
      synopsis = "Various basic utilities for Pipes.";
      description = "This module contains basic utilities for Pipes to deal with files and chunked binary data, as well as extra combinators like 'zip' and 'tee'.";
      buildType = "Simple";
    };
    components = {
      "pipes-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.pipes-core)
          (hsPkgs.bytestring)
        ];
      };
    };
  }