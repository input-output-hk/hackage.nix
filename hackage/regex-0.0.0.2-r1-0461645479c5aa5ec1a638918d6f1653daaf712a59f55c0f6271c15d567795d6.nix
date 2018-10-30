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
        name = "regex";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2016-2017";
      maintainer = "chris.dornan@irisconnect.co.uk";
      author = "Chris Dornan";
      homepage = "https://iconnect.github.io/regex";
      url = "";
      synopsis = "A Regular Expression Toolkit for regex-base";
      description = "A Regular Expression Toolkit for regex-base with\nCompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level AWK-like tools\nfor building text processing apps, regular expression\nmacros and test bench, a tutorial and copious examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.heredoc)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.smallcheck)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.tasty-smallcheck)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "re-gen-modules" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "re-include" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "re-nginx-log-processor" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
        "re-pp" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "re-tutorial" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.shelly)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "re-gen-modules-test" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "re-include-test" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "re-nginx-log-processor-test" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
        "re-pp-test" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
          ];
        };
        "re-tests" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
          ];
        };
        "re-tutorial-test" = {
          depends  = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.shelly)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }