{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hspread";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrea Vezzosi, sanzhiyan@gmail.com";
      author = "Andrea Vezzosi";
      homepage = "";
      url = "";
      synopsis = "A client library for the spread toolkit";
      description = "hspread is a client library for the Spread toolkit.\nIt is fully implemented in haskell and supports the most recent version\nof the protocol. It's intended to be used with a serialization library\nlike binary, and a separate installation of the spread deamon.";
      buildType = "Simple";
    };
    components = {
      "hspread" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.extensible-exceptions)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }