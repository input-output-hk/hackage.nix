{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graphviz = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "lp-diagrams"; version = "1.0"; };
      license = "AGPL-3.0-only";
      copyright = "Jean-Philippe Bernardy";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "An EDSL for diagrams based based on linear constraints";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.typography-geometry)
          (hsPkgs.glpk-hs)
          (hsPkgs.vector)
          (hsPkgs.polynomials-bernstein)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.labeled-tree)
          ] ++ (pkgs.lib).optional (flags.graphviz) (hsPkgs.graphviz);
        };
      };
    }