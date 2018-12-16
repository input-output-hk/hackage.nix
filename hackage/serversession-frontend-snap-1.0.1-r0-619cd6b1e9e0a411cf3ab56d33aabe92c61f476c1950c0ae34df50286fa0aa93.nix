{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "serversession-frontend-snap";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/yesodweb/serversession";
      url = "";
      synopsis = "Snap bindings for serversession.";
      description = "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-snap>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.nonce)
          (hsPkgs.path-pieces)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.serversession)
        ];
      };
    };
  }