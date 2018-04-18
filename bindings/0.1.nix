{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings";
        url = "";
        synopsis = "Low level bindings for foreign libraries\nfollowing community driven guidelines";
        description = "This package aims at beeing a wide collection of low-level bindings\ncovering as much as possible of the functionality of good quality\nlibraries, following a common set of community driven guidelines.\n(The current set of guidelines is shown at \"Bindings\" module\ndocumentation.) It has been created as an attempt to relieve the\ncommon situation where developers of high-level modules can't waste\neffort with all details of low-level work, and for those writing\ncompreensive and reliable low-level bindings little time is left to\nget the best of Haskell. Developers with good understanding of their\nfavorite foreign language libraries and Haskell FFI can benefict\nfrom contributing to this package by sharing guidelines, tests and\ncode facilities, and help each other in issues of reliability and\nportability; and developers of higher-level modules can put their\nefforts where they are needed, with a reliable set of low-level code\nat hand.";
        buildType = "Simple";
      };
      components = {
        bindings = {
          depends  = [ hsPkgs.base ];
        };
      };
    }