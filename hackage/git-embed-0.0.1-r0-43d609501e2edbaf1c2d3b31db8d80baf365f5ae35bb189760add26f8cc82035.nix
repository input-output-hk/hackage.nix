{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "git-embed";
        version = "0.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "2014 Emanuel Borsboom";
      maintainer = "Emanuel Borsboom <emanuel@borsboom.io>";
      author = "Emanuel Borsboom <emanuel@borsboom.io>";
      homepage = "https://github.com/borsboom/git-embed";
      url = "";
      synopsis = "Use TH to embed Git repo information.";
      description = "Use Template Haskell to embed Git revision, branch, and\ntag information.";
      buildType = "Simple";
    };
    components = {
      "git-embed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
    };
  }