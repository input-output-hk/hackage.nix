{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "orgmode-parse";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
      author = "Parnell Springmeyer <parnell@digitalmentat.com>";
      homepage = "";
      url = "";
      synopsis = "A parser and writer for org-mode flavored documents.";
      description = "<<https://travis-ci.org/digitalmentat/orgmode-parse.svg?branch=master>>\n\n`orgmode-parse` is a parsing and writing library for the org-mode flavor\nof document markup.\n\nThis library parses the human-readable and textual representation\ninto an AST that can be used for output to another format (HTML?\nMarkdown?), serialized for storage, etc...";
      buildType = "Simple";
    };
    components = {
      "orgmode-parse" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.hashable)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.thyme)
            (hsPkgs.old-locale)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }