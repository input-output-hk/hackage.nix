{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot-cbmc"; version = "2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Lee Pike\n, Sebastian Niller\n, Nis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "Copilot interface to a C model-checker.";
      description = "Depends on CBMC <http://www.cprover.org/cbmc/>.  Generates a driver to prove\nthe Atom and SBV backends generate equivalent code.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/leepike/copilot-discussion>.\n\nExamples are available at\n<https://github.com/leepike/Copilot/tree/master/Examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.copilot-core)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.pretty)
          (hsPkgs.copilot-sbv)
          (hsPkgs.copilot-c99)
          ];
        };
      };
    }