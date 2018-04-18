{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "predicates";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Pollard <porges@porg.es>";
        author = "George Pollard";
        homepage = "";
        url = "";
        synopsis = "A couple of convenience functions for forming predicates.";
        description = "A couple of convenience functions for forming predicates (currently 'is', 'isn't', and 'equals'). Also my first library as a test ;)";
        buildType = "Simple";
      };
      components = {
        predicates = {
          depends  = [ hsPkgs.base ];
        };
      };
    }