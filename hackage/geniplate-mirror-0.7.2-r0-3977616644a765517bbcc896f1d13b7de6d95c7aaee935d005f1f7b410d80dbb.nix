{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "geniplate-mirror"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Lennart Augustsson";
      maintainer = "Dan Rosén, danr@chalmers.se";
      author = "Lennart Augustsson";
      homepage = "https://github.com/danr/geniplate";
      url = "";
      synopsis = "Use Template Haskell to generate Uniplate-like functions.";
      description = "Use Template Haskell to generate Uniplate-like functions.\n\nThis is a maintained mirror of the\n<http://hackage.haskell.org/package/geniplate geniplate> package,\nwritten by Lennart Augustsson.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.template-haskell) (hsPkgs.mtl) ];
        };
      };
    }