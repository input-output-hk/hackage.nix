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
        name = "roku-api";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "";
      url = "";
      synopsis = "Bindings to Roku's External Control API";
      description = "Bindings to Roku's External Control API.";
      buildType = "Simple";
    };
    components = {
      "roku-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.xml)
          (hsPkgs.xml-extractors)
        ];
      };
    };
  }