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
        name = "proto-lens-optparse";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "awpr+protolens@google.com";
      author = "Andrew Pritchard";
      homepage = "https://github.com/google/proto-lens";
      url = "";
      synopsis = "Adapting proto-lens to optparse-applicative ReadMs.";
      description = "A package adapting proto-lens to optparse-applicative ReadMs.\nThis gives an easy way to define options and arguments for\ntext-format protobuf types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.proto-lens)
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
        ];
      };
    };
  }