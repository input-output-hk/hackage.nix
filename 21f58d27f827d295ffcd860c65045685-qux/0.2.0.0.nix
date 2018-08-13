{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "qux";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/qux-lang/qux";
      url = "";
      synopsis = "Command line binary for working with the Qux language";
      description = "Qux is an experimental language developed from the ground up with the aim of static\ncompile time verification. This package provides a binary for working with it\n(compiling, type checking and pretty printing).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "qux" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.language-qux)
            (hsPkgs.llvm-general)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }