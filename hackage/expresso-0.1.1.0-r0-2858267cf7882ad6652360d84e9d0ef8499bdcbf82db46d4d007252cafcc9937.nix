{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { terminfo = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "expresso"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@timphilipwilliams.com";
      author = "Tim Williams";
      homepage = "";
      url = "";
      synopsis = "A simple expressions language based on row types";
      description = "Expresso is a minimal statically-typed functional programming language, designed with embedding and/or extensibility in mind.\n\nPossible use cases for such a minimal language include configuration (à la Nix), data exchange (à la JSON) or even a starting point for a custom external DSL.\n\nPlease refer to README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.wl-pprint)
          ] ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
        };
      exes = {
        "expresso" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.wl-pprint)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.haskeline)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ] ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
          };
        };
      tests = {
        "test-expresso" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.wl-pprint)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.haskeline)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.expresso)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ] ++ (pkgs.lib).optional (!system.isWindows && flags.terminfo) (hsPkgs.terminfo);
          };
        };
      };
    }