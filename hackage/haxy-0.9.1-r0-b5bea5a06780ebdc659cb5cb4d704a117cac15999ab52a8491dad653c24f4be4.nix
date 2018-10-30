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
      specVersion = "1.10";
      identifier = {
        name = "haxy";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/haxy";
      url = "";
      synopsis = "A simple HTTP proxy server library";
      description = "A library for writing HTTP proxy servers with the focus on simplicity, flexibility and modularity. Allows arbitrary transformations on requests and responses and custom caching methods. It's up to the user to make sure that the message transformations are consistent with the HTTP specification. The executable program is a simple non-caching identity proxy and is used for testing the library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.http-server)
          (hsPkgs.HTTP)
          (hsPkgs.base)
          (hsPkgs.url)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.hostname)
        ];
      };
      exes = {
        "simple-proxy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.hostname)
            (hsPkgs.http-server)
            (hsPkgs.HTTP)
          ];
        };
      };
    };
  }