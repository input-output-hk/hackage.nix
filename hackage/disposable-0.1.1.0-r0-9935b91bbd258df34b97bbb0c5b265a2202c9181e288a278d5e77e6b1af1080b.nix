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
        name = "disposable";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/disposable#readme";
      url = "";
      synopsis = "Allows storing different resource-releasing actions together.";
      description = "SomeDisposable aloows storing different resource releasing actions togther in a container.\nThis library is useful for queueing up GHCJS.Foreign.Callback together to be released\nafter a new rendering frame.";
      buildType = "Simple";
    };
    components = {
      "disposable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dlist)
        ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
      };
    };
  }