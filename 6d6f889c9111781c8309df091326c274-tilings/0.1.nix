{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tilings";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "https://gitorious.org/tilings";
        url = "";
        synopsis = "substitution tilings";
        description = "Substitution tilings.  The term substitution, in connection with tilings,\ndescribes a simple but powerful method to produce tilings with many\ninteresting properties.\n\nThe main idea is to use a finite set of building blocks called prototiles,\nan expanding linear map (the inflation factor), and a rule how to dissect\neach scaled tile into copies of the original prototiles.\n\nFor some examples of substitution tilings, and a glossary of terminology,\nsee the /tilings encyclopedia/\nat <http://tilings.math.uni-bielefeld.de/>";
        buildType = "Simple";
      };
      components = {
        tilings = {
          depends  = [ hsPkgs.base ];
        };
      };
    }