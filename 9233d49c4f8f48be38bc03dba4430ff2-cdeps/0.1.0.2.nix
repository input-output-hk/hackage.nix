{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
      no-executable = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "cdeps";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Extract dependencies from C code.";
      description = "This package provides the ability to extract dependencies from C code, for use with [shake](https://shakebuild.com) or otherwise.";
      buildType = "Simple";
    };
    components = {
      "cdeps" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "cdeps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cdeps)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "cdeps-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cdeps)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }