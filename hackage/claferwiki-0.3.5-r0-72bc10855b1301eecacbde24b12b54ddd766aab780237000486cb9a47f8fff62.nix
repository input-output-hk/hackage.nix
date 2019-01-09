{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "claferwiki"; version = "0.3.5"; };
      license = "MIT";
      copyright = "Michal Antkiewicz, Chris Walker, Luke Michael Brown";
      maintainer = "mantkiew@gsd.uwaterloo.ca";
      author = "Michal Antkiewicz, Chris Walker, Luke Michael Brown";
      homepage = "http://github.com/gsdlab/claferwiki";
      url = "";
      synopsis = "A wiki-based IDE for literate modeling with Clafer";
      description = "A wiki-based IDE for literate modeling with Clafer. A Plugin for the Gitit wiki which collects code blocks written in Clafer (.clafer), compiles them, renders into HTML and Dot, and replaces the code blocks with the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.split)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.MissingH)
          (hsPkgs.SHA)
          (hsPkgs.utf8-string)
          (hsPkgs.pandoc-types)
          (hsPkgs.gitit)
          (hsPkgs.clafer)
          ];
        };
      };
    }