{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "concatenative";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "amsay@amsay.net";
        author = "Sam Anklesaria";
        homepage = "";
        url = "";
        synopsis = "A library for postfix control flow.";
        description = "Concatenative gives haskell factor style\ncombinators and arrows for postfix notation.\nFor more information on stack based languages,\nsee <http://concatenative.org>";
        buildType = "Simple";
      };
      components = {
        concatenative = {
          depends  = [ hsPkgs.base ];
        };
      };
    }