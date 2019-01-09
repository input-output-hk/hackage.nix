{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "listlike-instances"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "http://jwlato.webfactional.com/haskell/listlike-instances";
      url = "";
      synopsis = "Extra instances of the ListLike class";
      description = "Provides ListLike instances for Vector and Text types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ListLike)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      };
    }