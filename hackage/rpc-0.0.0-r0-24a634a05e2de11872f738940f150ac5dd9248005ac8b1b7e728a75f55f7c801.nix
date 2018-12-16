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
      specVersion = "0";
      identifier = {
        name = "rpc";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "";
      url = "";
      synopsis = "type safe rpcs provided as basic IO actions";
      description = "Given an address of a server sharing a set of functions,\nthis rpc library generates functions of the same name for\na client, preformed within the IO monad.  Calling\nthese results in the original function being executed\nserver side.  The pseudo-functions generated maintain\ntheir original server side type (except for the added IO).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network-fancy)
          (hsPkgs.cereal)
          (hsPkgs.th-lift)
          (hsPkgs.derive)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
        ];
      };
    };
  }