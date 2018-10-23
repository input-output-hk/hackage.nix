{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "HTTP-Simple";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fastmail.fm";
      author = "brad clawsie";
      homepage = "http://www.b7j0c.org/content/haskell-http.html";
      url = "";
      synopsis = "Enable simple wrappers to Network.HTTP";
      description = "Enable simple wrappers to Network.HTTP";
      buildType = "Custom";
    };
    components = {
      "HTTP-Simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
        ];
      };
    };
  }