{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hexpat-pickle-generic";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "";
      url = "";
      synopsis = "Picklers for de/serialising Generic data types to and from XML";
      description = "An IsXML class and GHC.Generics implementation for pickleable\ndata types using hexpat and hexpat-pickle.";
      buildType = "Simple";
    };
    components = {
      "hexpat-pickle-generic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hexpat-pickle)
          (hsPkgs.text)
        ];
      };
    };
  }