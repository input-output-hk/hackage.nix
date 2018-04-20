{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pareto";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Benjamin Weber";
        maintainer = "Benjamin Weber <mail@bwe.im>";
        author = "Benjamin Weber <mail@bwe.im>";
        homepage = "http://bitbucket.org/hyllos/pareto-haskell";
        url = "";
        synopsis = "A library for cause-effect relationships.";
        description = "Functions\n\n* pareto: Is a pareto distribution present for a list of numbers?\n\n* causesMaxConcentration: Which causes have the highest concentration?\n\n* effectsMaxConcentration: Which effects have the highest concentration?\n\n* causes: Determine causes for specified share of effects.\n\n* effects: Determine effects for specified share of causes.";
        buildType = "Simple";
      };
      components = {
        pareto = {
          depends  = [ hsPkgs.base ];
        };
      };
    }