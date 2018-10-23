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
        name = "regex-with-pcre";
        version = "1.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2016-2017";
      maintainer = "Chris Dornan <chris@regex.uk>";
      author = "Chris Dornan";
      homepage = "http://regex.uk";
      url = "";
      synopsis = "Toolkit for regex-base";
      description = "A regular expression toolkit for regex-base with\ncompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level AWK-like tools\nfor building text processing apps, regular expression\nmacros with parsers and test bench, omprehensive\ndocumentation, tutorials and copious examples.";
      buildType = "Simple";
    };
    components = {
      "regex-with-pcre" = {
        depends  = [
          (hsPkgs.regex)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.regex-pcre-text)
          (hsPkgs.regex-tdfa)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }