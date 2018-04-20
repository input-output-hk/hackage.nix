{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "relation";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2012 Drew Day,\n(C) 2010 Leonel Fonseca";
        maintainer = "Drew Day";
        author = "Leonel Fonseca";
        homepage = "https://www.github.com/d-day/relation/";
        url = "";
        synopsis = "A data structure representing Relations on Sets.";
        description = "A library to model relationships between two objects that are subclasses of\nOrd.\n\nInstead using a Map structure we use a two Maps that allows\nfast searching either by the key element or the value element.\n\nEach of Map is between an element and a set of values.\nThus careful coordination of operations is required.\n\nThis library lacks of extensive testing, formal testing or automated testing.\nAlso in comparison to Data.Set or Data.Map (which provide the underlying\ninfrastructure used) there are some missing methods.\n\nTwo small examples are currently provided.\n\nChanges:\n\n@\n\\ 2012.06.06.  DD. Translated to English.\n\n\\ 2009.11.09. LFL. Corrected the definition of delete.\n\n\\ 2009.11.26. LFL. Construction\n@\n";
        buildType = "Simple";
      };
      components = {
        relation = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
          ];
        };
      };
    }