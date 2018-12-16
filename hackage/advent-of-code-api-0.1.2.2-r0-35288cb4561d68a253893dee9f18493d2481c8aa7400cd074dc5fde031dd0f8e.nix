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
      specVersion = "1.12";
      identifier = {
        name = "advent-of-code-api";
        version = "0.1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/advent-of-code-api#readme";
      url = "";
      synopsis = "Advent of Code REST API bindings";
      description = "Haskell bindings for Advent of Code REST API.  Please use responsibly!\nSee README.md or \"Advent\" module for an introduction and tutorial.\n\nRequires libcurl.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.curl)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.finite-typelits)
          (hsPkgs.mtl)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uri-encode)
        ];
      };
      tests = {
        "advent-of-code-api-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.advent-of-code-api)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
          ];
        };
      };
    };
  }