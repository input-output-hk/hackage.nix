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
      specVersion = "1.2";
      identifier = {
        name = "data-ordlist";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Leon P Smith <leon@melding-monads.com>";
      homepage = "";
      url = "";
      synopsis = "Set and bag operations on ordered lists";
      description = "Ordered Lists";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }