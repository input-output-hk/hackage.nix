{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "claferwiki";
        version = "0.4.5";
      };
      license = "MIT";
      copyright = "Michal Antkiewicz, Chris Walker, Luke Michael Brown";
      maintainer = "Michał Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Michał Antkiewicz, Chris Walker, Luke Michael Brown";
      homepage = "http://github.com/gsdlab/claferwiki";
      url = "";
      synopsis = "A wiki-based IDE for literate modeling with Clafer";
      description = "A wiki-based IDE for literate modeling with Clafer. A Plugin for the Gitit wiki which collects code blocks written in Clafer (.clafer), compiles them, renders into HTML and Dot, and replaces the code blocks with the results.";
      buildType = "Simple";
    };
    components = {
      "claferwiki" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.split)
          (hsPkgs.MissingH)
          (hsPkgs.network-uri)
          (hsPkgs.SHA)
          (hsPkgs.utf8-string)
          (hsPkgs.gitit)
          (hsPkgs.transformers-compat)
          (hsPkgs.clafer)
        ];
      };
    };
  }