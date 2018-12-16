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
        name = "proto-lens-optparse";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "awpr+protolens@google.com";
      author = "Andrew Pritchard";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Adapting proto-lens to optparse-applicative ReadMs.";
      description = "A package adapting proto-lens to optparse-applicative ReadMs. This gives an easy way to define options and arguments for text-format protobuf types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.proto-lens)
          (hsPkgs.text)
        ];
      };
    };
  }