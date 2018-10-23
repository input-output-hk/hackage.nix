{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "opencog-atomspace";
        version = "0.1.0.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "-";
      author = "Marcos Pividori";
      homepage = "github.com/opencog/atomspace/tree/master/opencog/haskell";
      url = "";
      synopsis = "Haskell Bindings for the AtomSpace.";
      description = "This library defines Haskell Bindings for the AtomSpace.\n\nFor more information on Haskell Bindings:\n<http://wiki.opencog.org/w/Haskell>\n\nGitHub repository:\n<https://github.com/opencog/atomspace/tree/master/opencog/haskell>";
      buildType = "Simple";
    };
    components = {
      "opencog-atomspace" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
        libs = [
          (pkgs."atomspace-cwrapper")
        ];
      };
    };
  }