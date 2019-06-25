{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rewrite-inspector"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Orestis Melkonian <melkon.or@gmail.com>";
      author = "Orestis Melkonian";
      homepage = "http://github.com/omelkonian/rewrite-inspector/";
      url = "";
      synopsis = "Inspection of rewriting steps";
      description = "A terminal UI for inspecting steps taken by a rewriting process.\nUseful for the optimization phase of a compiler,\nor even evaluators of small languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.brick)
          (hsPkgs.vty)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.data-default)
          ];
        };
      exes = {
        "expr-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.prettyprinter)
            (hsPkgs.rewrite-inspector)
            ];
          libs = [ (pkgs."pthread") ];
          };
        "str-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.prettyprinter)
            (hsPkgs.rewrite-inspector)
            ];
          libs = [ (pkgs."pthread") ];
          };
        };
      };
    }