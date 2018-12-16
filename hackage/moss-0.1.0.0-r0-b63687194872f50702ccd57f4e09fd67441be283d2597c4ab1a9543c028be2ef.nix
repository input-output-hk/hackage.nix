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
      specVersion = "1.12";
      identifier = {
        name = "moss";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2018 Michael B. Gale";
      maintainer = "m.gale@warwick.ac.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/moss#readme";
      url = "";
      synopsis = "Haskell client for Moss";
      description = "Please see the README on Github at <https://github.com/mbg/moss#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-extra)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.unix-compat)
        ];
      };
    };
  }