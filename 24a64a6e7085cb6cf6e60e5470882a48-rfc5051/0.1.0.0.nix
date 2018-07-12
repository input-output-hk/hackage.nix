{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      mkunicodedata = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rfc5051";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2013 John MacFarlane";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "";
        url = "";
        synopsis = "Simple unicode collation as per RFC5051.";
        description = "This library implements \"i;unicode-casemap\",\nthe simple, non locale-sensitive unicode collation\nalgorithm described in RFC 5051 (<http://www.rfc-editor.org/rfc/rfc5051.txt>).\nProper unicode collation can be done using text-icu, but that is a big\ndependency that depends on a large C library, and rfc5051 might be better\nfor some purposes.\n\nHere is a list of strings sorted by the Prelude's @sort@ function:\n@Abe Oeb abe abé oeb Ábe Äbe Ôeb ábe äbe ôeb@.\nHere is the same list sorted by @sortBy compareUnicode@:\n@Abe abe abé Ábe ábe Äbe äbe Oeb oeb Ôeb ôeb@.";
        buildType = "Simple";
      };
      components = {
        "rfc5051" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
          ];
        };
        exes = {
          "MkUnicodeData" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
            ];
          };
        };
      };
    }