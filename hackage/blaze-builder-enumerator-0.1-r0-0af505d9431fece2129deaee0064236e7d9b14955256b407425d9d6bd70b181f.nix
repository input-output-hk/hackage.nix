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
      specVersion = "1.6";
      identifier = {
        name = "blaze-builder-enumerator";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Thomas Sutton 2010";
      maintainer = "me@thomas-sutton.id.au";
      author = "Thomas Sutton <me@thomas-sutton.id.au>";
      homepage = "http://github.com/thsutton/blaze-builder-enumerator";
      url = "";
      synopsis = "Use blaze-builder Builder's in an Iteratee.";
      description = "This package simplifies the process of using blaze-builder with the\nenumerator package by converting a function that constructs a Builder into\nan Iteratee.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
        ];
      };
    };
  }