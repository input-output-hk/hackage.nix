{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = {
        name = "configuration-tools";
        version = "0.2.7";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "https://github.com/alephcloud/hs-configuration-tools";
      url = "";
      synopsis = "Tools for specifying and parsing configurations";
      description = "Tools for specifying and parsing configurations\n\nThis package provides a collection of utils on top of the packages\n<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,\n<http://hackage.haskell.org/package/aeson aeson>, and\n<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and\napplications in a convenient and composable way.\n\nThe main features are\n\n1. configuration management through integration of command line option\nparsing and configuration files and\n\n2. a @Setup.hs@ file that generates a @PkgInfo@ module for each component\nof a package that provides information about the package and the build.\n\nDocumentation on how to use this package can be found in the\n<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>\nand in the API documentation of the modules \"Configuration.Utils\" and\n\"Configuration.Utils.Setup\".";
      buildType = "Custom";
    };
    components = {
      "configuration-tools" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.errors)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          (hsPkgs.profunctors)
        ];
      };
      tests = {
        "url-example-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.configuration-tools)
            (hsPkgs.errors)
            (hsPkgs.mtl)
          ];
        };
        "trivial" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.configuration-tools)
          ];
        };
      };
    };
  }