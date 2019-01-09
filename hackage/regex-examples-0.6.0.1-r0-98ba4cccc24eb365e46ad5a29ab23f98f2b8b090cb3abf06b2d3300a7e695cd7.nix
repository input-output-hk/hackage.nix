{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "regex-examples"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2016-2017";
      maintainer = "Chris Dornan <chris@regex.uk>";
      author = "Chris Dornan";
      homepage = "http://regex.uk";
      url = "";
      synopsis = "Tutorial, tests and example programs for regex";
      description = "Tutorial, tests and example programs for regex,\na Regular Expression Toolkit for regex-base with\nCompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level AWK-like tools\nfor building text processing apps, regular expression\nmacros and test bench, a tutorial and copious examples.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "re-gen-cabals" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-gen-modules" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-include" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-nginx-log-processor" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.regex-with-pcre)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "re-prep" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.heredoc)
            (hsPkgs.http-conduit)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-tests" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.regex-with-pcre)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "re-tutorial" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.shelly)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "re-gen-cabals-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-gen-modules-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-include-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-nginx-log-processor-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.regex-with-pcre)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "re-prep-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.heredoc)
            (hsPkgs.http-conduit)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "re-tests-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.regex-with-pcre)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "re-tutorial-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.shelly)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "re-tutorial-os-test" = {
          depends = [
            (hsPkgs.regex)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.shelly)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }