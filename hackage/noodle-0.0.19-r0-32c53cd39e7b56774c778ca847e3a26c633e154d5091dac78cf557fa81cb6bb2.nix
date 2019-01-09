{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "noodle"; version = "0.0.19"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Jesse Rudolph";
      author = "Jesse Rudolph";
      homepage = "https://github.com/jessopher/noodle";
      url = "";
      synopsis = "the noodle programming language";
      description = "The @noodle@ Programming Language Interpreter\n\nNoodle is two things. It is a programming language, and it is this implementation\nof that programming language.\n\n/Briefly.../\n\nNoodle (the language) is functional, latently typed, and statically scoped.\nNoodle has no language level concept of mutable state.\nData abstraction is handled with 'scope bound' wrappers that prevent pattern matching on some value outside\nof some mutually recursive scope.\nNumbers are arbitrary precision integer ratios.\nOperators are (possibly) high order functions with special application rules that omit evaluation of the\nright operand if their application to the left operand does not return a function.\nModules are mutually recursive internally, are first class, and can be parameterized by constructing them with functions.\nRather than arrays or linked lists, the most basic compound data structure in noodle is a binary tree, or 'product'.\n\n\nthe primary points of interest in this package are:\n\n[@noodle@]      the option directed command line interface\n\n[@noodle-repl@] the read-eval-print-loop\n\n[@noodle-eval@] an interface for evaluating a single noodle\nexpression (computation) from stdin\n\n\nYou may also incorporate noodle into your own program as a library,\nbut this is /even less documented/ than the /completely undocumented/ command\nline interface... so I don't know why you would want to do this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.filepath) (hsPkgs.directory) ];
        };
      exes = {
        "noodle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.noodle)
            ];
          };
        "noodle-repl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.noodle)
            ];
          };
        "noodle-eval" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.noodle)
            ];
          };
        };
      };
    }