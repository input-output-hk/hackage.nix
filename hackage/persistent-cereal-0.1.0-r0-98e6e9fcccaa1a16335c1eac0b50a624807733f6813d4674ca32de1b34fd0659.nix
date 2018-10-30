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
      specVersion = "1.8";
      identifier = {
        name = "persistent-cereal";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "difrumin@gmail.com";
      author = "Dan Frumin";
      homepage = "http://hub.darcs.net/co-dan/persistent-cereal";
      url = "";
      synopsis = "Helper functions for writing Persistent instances";
      description = "Minor boilerplate for writing Persistance instances for values that are serializable with the 'cereal' library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.persistent)
          (hsPkgs.text)
        ];
      };
    };
  }