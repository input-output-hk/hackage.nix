{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rspp";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Alex Chapman";
        maintainer = "alex@farfromthere.net";
        author = "Alex Chapman";
        homepage = "http://github.com/AJChapman/rspp";
        url = "";
        synopsis = "A Rational Street Performer Protocol solver";
        description = "The Rational Street Performer Protocol (<http://www.logarithmic.net/pfh/rspp>) is a way to raise money for a public good in a way that is rational for individual contributors. This library will compute a total given a collection of individual pledges.";
        buildType = "Simple";
      };
      components = {
        rspp = {
          depends  = [ hsPkgs.base ];
        };
      };
    }