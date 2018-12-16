{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "cdeps";
        version = "0.1.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Extract dependencies from C code.";
      description = "This package provides the ability to extract dependencies from C code, for use with [shake](https://shakebuild.com) or otherwise. This can also be used to extract dependencies from Haskell source using the C preprocessor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "cdeps" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cdeps)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "cdeps-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cdeps)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }