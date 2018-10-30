{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aip";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/aip";
      url = "";
      synopsis = "Aeronautical Information Package (AIP)";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nDocument managament for the airservices Aeronautical Information Package (AIP).";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.network-uri)
          (hsPkgs.tagsoup)
          (hsPkgs.tagsoup-selection)
          (hsPkgs.transformers)
          (hsPkgs.parsers)
          (hsPkgs.parsec)
          (hsPkgs.digit)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.lens)
          (hsPkgs.papa)
        ];
      };
      exes = {
        "aip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.network-uri)
            (hsPkgs.tagsoup)
            (hsPkgs.tagsoup-selection)
            (hsPkgs.transformers)
            (hsPkgs.parsers)
            (hsPkgs.parsec)
            (hsPkgs.digit)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.lens)
            (hsPkgs.papa)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.parsec)
            (hsPkgs.quickcheck-text)
          ];
        };
      };
    };
  }