{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "fortran-src"; version = "0.3.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "me@madgen.net";
      author = "Mistral Contrastin, Matthew Danish, Dominic Orchard, Andrew Rice";
      homepage = "https://github.com/camfort/fortran-src#readme";
      url = "";
      synopsis = "Parser and anlyses for Fortran standards 66, 77, 90 and 95.";
      description = "Provides lexing, parsing, and basic analyses of Fortran code covering standards: FORTRAN 66, FORTRAN 77, Fortran 90, and Fortran 95 and some legacy extensions. Includes data flow and basic block analysis, a renamer, and type analysis. For example usage, see the 'camfort' project, which uses fortran-src as its front end.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.GenericPretty)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.uniplate)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      exes = {
        "fortran-src" = {
          depends = [
            (hsPkgs.GenericPretty)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.fortran-src)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.GenericPretty)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.fortran-src)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            ];
          };
        };
      };
    }