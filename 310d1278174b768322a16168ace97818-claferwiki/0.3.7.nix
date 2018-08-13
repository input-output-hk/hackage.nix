{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "claferwiki";
        version = "0.3.7";
      };
      license = "MIT";
      copyright = "Michał Antkiewicz, Chris Walker, Luke Michael Brown";
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
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.split)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.MissingH)
          (hsPkgs.SHA)
          (hsPkgs.utf8-string)
          (hsPkgs.gitit)
          (hsPkgs.clafer)
        ];
      };
    };
  }