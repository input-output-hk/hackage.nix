{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "pipes-bytestring";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012, 2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "ByteString support for pipes";
      description = "This library provides @pipes@ utilities for @ByteString@s";
      buildType = "Simple";
    };
    components = {
      "pipes-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.pipes-parse)
          (hsPkgs.transformers)
        ];
      };
    };
  }