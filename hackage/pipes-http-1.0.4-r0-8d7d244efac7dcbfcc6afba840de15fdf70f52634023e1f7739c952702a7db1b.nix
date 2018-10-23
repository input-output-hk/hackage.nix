{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "pipes-http";
        version = "1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "HTTP client with pipes interface";
      description = "@pipes-http@ is a @pipes@ wrapper around the @http-client@ library";
      buildType = "Simple";
    };
    components = {
      "pipes-http" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
        ];
      };
    };
  }