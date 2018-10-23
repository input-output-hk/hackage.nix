{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nylas";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015, Brian Schroeder";
      maintainer = "bts@gmail.com";
      author = "Brian Schroeder";
      homepage = "https://github.com/bts/nylas-hs";
      url = "";
      synopsis = "Client for the Nylas API";
      description = "A client for the Nylas HTTP API, powered by lens and pipes.";
      buildType = "Simple";
    };
    components = {
      "nylas" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.pipes)
          (hsPkgs.pipes-aeson)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-parse)
          (hsPkgs.text)
          (hsPkgs.wreq)
          (hsPkgs.pipes-http)
          (hsPkgs.time)
        ];
      };
    };
  }