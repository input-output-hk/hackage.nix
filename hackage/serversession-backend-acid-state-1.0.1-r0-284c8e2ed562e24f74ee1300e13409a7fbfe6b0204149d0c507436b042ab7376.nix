{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "serversession-backend-acid-state";
        version = "1.0.1";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/yesodweb/serversession";
      url = "";
      synopsis = "Storage backend for serversession using acid-state.";
      description = "API docs and the README are available at <http://www.stackage.org/package/serversession-backend-acid-state>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.safecopy)
          (hsPkgs.unordered-containers)
          (hsPkgs.serversession)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.acid-state)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.unordered-containers)
            (hsPkgs.hspec)
            (hsPkgs.serversession)
            (hsPkgs.serversession-backend-acid-state)
            ];
          };
        };
      };
    }