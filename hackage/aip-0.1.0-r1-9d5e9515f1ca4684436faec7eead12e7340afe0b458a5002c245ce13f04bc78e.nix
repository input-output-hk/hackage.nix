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
        name = "aip";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/aip";
      url = "";
      synopsis = "Aeronautical Information Package (AIP)";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nDocument management for the airservices Aeronautical Information Package (AIP).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.unordered-containers)
          (hsPkgs.HTTP)
          (hsPkgs.network-uri)
          (hsPkgs.tagsoup)
          (hsPkgs.tagsoup-selection)
          (hsPkgs.transformers)
          (hsPkgs.parsers)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.lens)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.Crypto)
          (hsPkgs.exceptions)
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "aip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aip)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.checkers)
            (hsPkgs.aip)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }