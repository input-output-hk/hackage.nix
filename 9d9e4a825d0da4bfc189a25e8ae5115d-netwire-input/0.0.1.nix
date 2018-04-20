{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "netwire-input";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "Pavel Krajcevski, 2014";
        maintainer = "Krajcevski@gmail.com";
        author = "Pavel Krajcevski";
        homepage = "https://www.github.com/Mokosha/netwire-input";
        url = "";
        synopsis = "Input handling abstractions for netwire";
        description = "This package contains a collection of Monad typeclasses that support\ninteraction with input devices such as keyboard and mice. Moreover, these\ntypeclasses are used to create wires from the netwire package the produce\nmouse and keyboard input values in a reactive way. This package cannot\nbe used independently and must be used with another package that provides\ninstantiation of these typeclasses such as netwire-input-glfw.";
        buildType = "Simple";
      };
      components = {
        netwire-input = {
          depends  = [
            hsPkgs.base
            hsPkgs.netwire
          ];
        };
      };
    }