{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "CouchDB";
        version = "1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2012.";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "see the AUTHORS file";
      homepage = "http://github.com/hsenag/haskell-couchdb/";
      url = "";
      synopsis = "CouchDB interface";
      description = "An interface to CouchDB servers.";
      buildType = "Simple";
    };
    components = {
      "CouchDB" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.HTTP)
          (hsPkgs.json)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ] ++ [
          (hsPkgs.network)
          (hsPkgs.network-uri)
        ];
      };
      tests = {
        "test-couchdb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.HTTP)
            (hsPkgs.json)
            (hsPkgs.utf8-string)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
          ] ++ [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ];
        };
      };
    };
  }