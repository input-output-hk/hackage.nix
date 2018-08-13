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
        name = "sparql-protocol";
        version = "1.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Ariel David Moya Sequeira";
      maintainer = "ardamose123@gmail.com";
      author = "Ariel David Moya Sequeira";
      homepage = "https://github.com/ardamose123/sparql-protocol";
      url = "";
      synopsis = "An SPARQL 1.1 Protocol client library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "sparql-protocol" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
        ];
      };
      tests = {
        "sparql-protocol-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sparql-protocol)
          ];
        };
      };
    };
  }