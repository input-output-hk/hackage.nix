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
      specVersion = "1.10";
      identifier = {
        name = "hakyll-filestore";
        version = "0.1.5";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "arasergus@posteo.net";
      author = "Aras Ergus";
      homepage = "https://gitlab.com/aergus/hakyll-filestore";
      url = "";
      synopsis = "FileStore utilities for Hakyll";
      description = "These utilities can (in particular) be used for extracting\ndate and author information for items from a darcs, git or\nmercurial repository.";
      buildType = "Simple";
    };
    components = {
      "hakyll-filestore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.filestore)
          (hsPkgs.time-locale-compat)
          (hsPkgs.hakyll)
        ];
      };
    };
  }