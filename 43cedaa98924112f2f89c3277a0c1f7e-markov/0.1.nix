{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "markov";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "";
        url = "";
        synopsis = "Simple interpreter for Markov's normal algorithms";
        description = "This package contains data types for defining Markov's normal algorithms and a function to run them.";
        buildType = "Simple";
      };
      components = {
        "markov" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }