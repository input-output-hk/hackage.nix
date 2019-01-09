{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "chorale"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2013-2016 Franz-Benjamin Mocnik";
      maintainer = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
      author = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
      homepage = "https://github.com/mocnik-science/chorale";
      url = "";
      synopsis = "A module containing basic functions that the prelude does not offer";
      description = "Chorale is a Haskell module that contains basic functions that the prelude\ndoes not offer. The prelude is traditionally followed by a chorale ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.safe) ];
        };
      };
    }