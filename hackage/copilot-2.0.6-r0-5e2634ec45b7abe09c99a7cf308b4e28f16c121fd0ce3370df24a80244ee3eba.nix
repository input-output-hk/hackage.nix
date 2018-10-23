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
        name = "copilot";
        version = "2.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lee Pike <leepike@galois.com>";
      author = "Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "http://leepike.github.com/Copilot/";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "Documentation is available at the website, and see the included examples.";
      buildType = "Simple";
    };
    components = {
      "copilot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.copilot-core)
          (hsPkgs.copilot-language)
          (hsPkgs.copilot-libraries)
          (hsPkgs.copilot-cbmc)
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