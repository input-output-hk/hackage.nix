{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xml-prettify";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dmr@davidrosenberg.me";
        author = "David M. Rosenberg";
        homepage = "http://github.com/rosenbergdm/xml-prettify";
        url = "";
        synopsis = "Pretty print XML.";
        description = "A simple command-line XML pretty-printer which automatically handles\nindentation.";
        buildType = "Simple";
      };
      components = {
        xml-prettify = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          xml-prettify = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.unix
            ];
          };
        };
      };
    }