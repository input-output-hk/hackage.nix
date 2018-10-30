{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "typalyze";
        version = "0.0.1";
      };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "mrd@debian.org";
      author = "Matthew Danish <mrd@debian.org>";
      homepage = "http://www.decidable.org/haskell/typalyze";
      url = "";
      synopsis = "Analyzes Haskell source files and dumps info in parsable format";
      description = "A tool to assist developers of IDEs and other code analyzing\nprograms.  Processes Haskell source files and outputs\ninformation about types in an efficient machine-readable\nformat.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "typalyze" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }