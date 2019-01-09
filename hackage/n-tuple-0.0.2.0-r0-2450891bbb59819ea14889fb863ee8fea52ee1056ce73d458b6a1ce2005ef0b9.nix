{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "n-tuple"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD-3";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/n-tuple#readme";
      url = "";
      synopsis = "Homogeneous tuples of arbitrary length.";
      description = "Please see the README on Github at <https://github.com/athanclark/sparrow-server#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.singletons) (hsPkgs.vector) ];
        };
      };
    }