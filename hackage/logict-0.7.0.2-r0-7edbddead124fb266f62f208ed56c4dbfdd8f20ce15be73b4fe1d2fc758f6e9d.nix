{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "logict"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2014, Dan Doel,\nCopyright (c) 2011-2013, Edward Kmett,\nCopyright (c) 2014, Roman Cheplyaka";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Dan Doel";
      homepage = "https://github.com/Bodigrim/logict#readme";
      url = "";
      synopsis = "A backtracking logic-programming monad.";
      description = "A continuation-based, backtracking, logic programming monad.\nAn adaptation of the two-continuation implementation found\nin the paper \"Backtracking, Interleaving, and Terminating\nMonad Transformers\" available here:\n<http://okmij.org/ftp/papers/LogicT.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.fail);
        };
      tests = {
        "logict-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logict)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }