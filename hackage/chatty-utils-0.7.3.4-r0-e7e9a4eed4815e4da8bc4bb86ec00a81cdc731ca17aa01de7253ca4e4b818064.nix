{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chatty-utils"; version = "0.7.3.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "http://hub.darcs.net/enum/chatty-utils";
      url = "";
      synopsis = "Some utilities every serious chatty-based application may need.";
      description = "Some utilities every serious chatty-based application may need. Includes a graph type, search trees, a None class, a counter and an atom store. Note that the author does not recommend usage in new projects any more. Please use packages that are better suited for your individual need.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.mtl)
          ];
        };
      };
    }