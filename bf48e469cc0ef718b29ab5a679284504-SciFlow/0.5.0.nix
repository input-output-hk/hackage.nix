{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      sge = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SciFlow";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "(c) 2016 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "Scientific workflow management system";
        description = "SciFlow is to help programmers design complex workflows\nwith ease.";
        buildType = "Simple";
      };
      components = {
        SciFlow = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cereal
            hsPkgs.directory
            hsPkgs.executable-path
            hsPkgs.fgl
            hsPkgs.graphviz
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.rainbow
            hsPkgs.shelly
            hsPkgs.sqlite-simple
            hsPkgs.split
            hsPkgs.th-lift
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.yaml
          ] ++ pkgs.lib.optional _flags.sge hsPkgs.drmaa;
        };
      };
    }