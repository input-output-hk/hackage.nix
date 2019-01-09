{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rethinkdb-model"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Hess <seanhess@gmail.com>";
      author = "Sean Hess";
      homepage = "http://github.com/atnnn/haskell-rethinkdb";
      url = "";
      synopsis = "Useful tools for modeling data with rethinkdb";
      description = "Useful tools for modeling data with rethinkdb";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.rethinkdb)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          ];
        };
      };
    }