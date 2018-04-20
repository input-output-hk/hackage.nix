{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "elm-build-lib";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2014 Joey Eremondi";
        maintainer = "joey@eremondi.com";
        author = "Joey Eremondi";
        homepage = "http://github.com/JoeyEremondi/elm-build-lib";
        url = "";
        synopsis = "Elm compiler wrapper";
        description = "Wrappers around the Elm binary to compile elm source strings into Javascript within Haskell";
        buildType = "Simple";
      };
      components = {
        elm-build-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.text
          ];
        };
      };
    }