{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "copilot";
        version = "2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lee Pike <leepike@galois.com>";
      author = "Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "http://leepike.github.com/Copilot/";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "This package is the main entry-point for using Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/leepike/copilot-discussion>.\n\nExamples are available at <https://github.com/leepike/Copilot/tree/master/Examples>.";
      buildType = "Simple";
    };
    components = {
      "copilot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.copilot-core)
          (hsPkgs.copilot-language)
          (hsPkgs.copilot-libraries)
        ];
      };
      exes = {
        "copilot-regression" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.copilot-core)
            (hsPkgs.copilot-language)
            (hsPkgs.copilot-libraries)
            (hsPkgs.copilot-sbv)
            (hsPkgs.copilot-cbmc)
            (hsPkgs.copilot-c99)
            (hsPkgs.directory)
            (hsPkgs.random)
          ];
        };
      };
    };
  }