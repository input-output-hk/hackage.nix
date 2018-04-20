{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "islink";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        homepage = "https://github.com/redneb/islink";
        url = "";
        synopsis = "Check if an HTML element is a link";
        description = "This package provides a function that checks whether a particular\ncombination of an HTML tag name and an attribute corresponds to an HTML\nelement that links to an external resource. For example, the combination\nof the tag @img@ and the attribute @src@ is an external link whereas\nthe combination @div@ and @style@ is not. This is particularly useful\nfor web scraping.";
        buildType = "Simple";
      };
      components = {
        islink = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
          ];
        };
      };
    }