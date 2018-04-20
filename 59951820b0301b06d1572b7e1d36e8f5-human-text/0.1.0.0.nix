{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "human-text";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A lawless typeclass for converting values to human-friendly text.";
        description = "It's embarrassing when details of a programming language leak into a user interface; use the 'humanText' function instead of 'show' to display text to people.";
        buildType = "Simple";
      };
      components = {
        human-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }