{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "LinkChecker";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jens@janzzstimmpfle.de";
      author = "Jens Stimpfle";
      homepage = "http://janzzstimmpfle.de/~jens/software/LinkChecker/";
      url = "";
      synopsis = "Check a bunch of local html files for broken links";
      description = "CLI tool to check for broken links in your static html files. Checking is done using HTTP HEAD requests, and only one request per URL is done per running instance (even if linked from several different files).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "linkchecker" = {
          depends  = [
            (hsPkgs.tagsoup)
            (hsPkgs.containers)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }