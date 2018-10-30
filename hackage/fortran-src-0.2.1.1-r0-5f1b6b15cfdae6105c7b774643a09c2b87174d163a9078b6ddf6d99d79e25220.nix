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
        name = "fortran-src";
        version = "0.2.1.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "me@madgen.net";
      author = "Mistral Contrastin, Matthew Danish, Dominic Orchard, Andrew Rice";
      homepage = "";
      url = "";
      synopsis = "Parser and anlyses for Fortran standards 66, 77, 90 and 95.";
      description = "Provides lexing, parsing, and basic analyses of Fortran code covering standards: FORTRAN 66, FORTRAN 77, Fortran 90, and Fortran 95 and some legacy extensions. Includes data flow and basic block analysis, a renamer, and type analysis. For example usage, see the 'camfort' project, which uses fortran-src as its front end.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.uniplate)
          (hsPkgs.GenericPretty)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.fgl)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "fortran-src" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.uniplate)
            (hsPkgs.GenericPretty)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.fortran-src)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.deepseq)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.uniplate)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.GenericPretty)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.fgl)
            (hsPkgs.fortran-src)
          ];
        };
      };
    };
  }