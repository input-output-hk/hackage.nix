{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "prolog-graph-lib";
        version = "0.2.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "none";
      author = "Matthias Bartsch";
      homepage = "https://github.com/Erdwolf/prolog";
      url = "";
      synopsis = "Generating images of resolution trees for Prolog queries.";
      description = "This is the library part (See <http://hackage.haskell.org/package/prolog-graph> for the command line tool).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.prolog)
          (hsPkgs.base)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.graphviz)
        ];
      };
    };
  }