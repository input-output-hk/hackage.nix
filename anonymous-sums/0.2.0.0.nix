{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      build-generator = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "anonymous-sums";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/anonymous-sums";
        url = "";
        synopsis = "Anonymous sum types";
        description = "Anonymous sum types.  Like tuples, but for sum types rather than\nfor product types.  Or, like Either, but for more than two types.";
        buildType = "Simple";
      };
      components = {
        anonymous-sums = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          generate-sums = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }