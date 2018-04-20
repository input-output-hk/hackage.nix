{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "domplate";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad";
        homepage = "https://github.com/valderman/domplate";
        url = "";
        synopsis = "A simple templating library using HTML5 as its template\nlanguage.";
        description = "Add replacement, insertion, conditional and loop\nattributes to your HTML tags, then perform the\ncorresponding substitutions directly on your HTML using\na context built using standard JSON tools or parsed from\na standard YAML file.";
        buildType = "Simple";
      };
      components = {
        domplate = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.yaml
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.tagsoup
            hsPkgs.vector
          ];
        };
      };
    }