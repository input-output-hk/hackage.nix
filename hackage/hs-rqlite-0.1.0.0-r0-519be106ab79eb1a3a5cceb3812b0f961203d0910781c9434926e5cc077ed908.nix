{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hs-rqlite"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Konstantinos Dermentzis <k.dermenz@gmail.com>";
      maintainer = "Konstantinos Dermentzis <k.dermenz@gmail.com>";
      author = "Konstantinos Dermentzis <k.dermenz@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell client for RQlite";
      description = "See README at <https://github.com/kderme/hs-rqlite/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.HTTP)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }