{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gooey"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "";
      url = "";
      synopsis = "Graphical user interfaces that are renderable,\nchange over time and eventually produce a value.";
      description = "Gooey provides a monadic interface on top of automaton\nbased FRP. It is targeted towards controlling renderable\ninterfaces that eventually produce values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.varying)
          (hsPkgs.renderable)
          (hsPkgs.transformers)
          ];
        };
      };
    }