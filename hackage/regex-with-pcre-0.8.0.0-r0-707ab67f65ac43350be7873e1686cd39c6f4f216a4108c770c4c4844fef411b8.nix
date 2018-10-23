{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "regex-with-pcre";
        version = "0.8.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2016-2017";
      maintainer = "Chris Dornan <chris@regex.uk>";
      author = "Chris Dornan";
      homepage = "http://regex.uk";
      url = "";
      synopsis = "Toolkit for regex-base";
      description = "A Regular Expression Toolkit for regex-base with\nCompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level AWK-like tools\nfor building text processing apps, regular expression\nmacros and test bench, a tutorial and copious examples.";
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
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
        ];
      };
    };
  }