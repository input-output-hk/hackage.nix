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
        name = "cayley-client";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016 - Michel Boucey";
      maintainer = "michel.boucey@cybervisible.fr";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/cayley-client";
      url = "";
      synopsis = "A Haskell client for the Cayley graph database";
      description = "cayley-client implements the RESTful API of the Cayley graph database.";
      buildType = "Simple";
    };
    components = {
      "cayley-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.base)
            (hsPkgs.cayley-client)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }