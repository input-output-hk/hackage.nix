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
        name = "why3";
        version = "0.8";
      };
      license = "MIT";
      copyright = "2012, 2014, 2015, Galois Inc.";
      maintainer = "sjw@galois.com";
      author = "Galois, Inc.";
      homepage = "";
      url = "";
      synopsis = "Haskell support for the Why3 input format.";
      description = "This package implements the Why3 language parser and printer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.monadLib)
          (hsPkgs.pretty)
          (hsPkgs.pretty-show)
          (hsPkgs.profunctors)
          (hsPkgs.text)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }