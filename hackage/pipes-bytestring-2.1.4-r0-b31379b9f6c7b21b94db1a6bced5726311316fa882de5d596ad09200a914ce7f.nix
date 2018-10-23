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
        version = "2.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2014 Gabriel Gonzalez";
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
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-parse)
          (hsPkgs.transformers)
        ];
      };
    };
  }