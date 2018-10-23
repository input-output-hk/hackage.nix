{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ansi-wl-pprint";
        version = "0.6.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Daan Leijen, Max Bolingbroke";
      homepage = "http://github.com/ekmett/ansi-wl-pprint";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
      description = "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf). It has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.";
      buildType = "Simple";
    };
    components = {
      "ansi-wl-pprint" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      exes = {
        "ansi-wl-pprint-example" = {
          depends  = pkgs.lib.optionals (flags.example) [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }