{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot-c99"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Lee Pike\n, Robin Morisset\n, Alwyn Goodloe\n, Sebastian Niller\n, Nis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "A compiler for Copilot targeting C99.";
      description = "This is a back-end from Copilot to the Atom DSL. Please see README.mk for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.atom)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-csv)
          (hsPkgs.containers)
          (hsPkgs.copilot-core)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.pretty)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.QuickCheck)
          ];
        };
      exes = {
        "copilot-c99-qc" = {
          depends = [
            (hsPkgs.atom)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-csv)
            (hsPkgs.containers)
            (hsPkgs.copilot-core)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.pretty)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }