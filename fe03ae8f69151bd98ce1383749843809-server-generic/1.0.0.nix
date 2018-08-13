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
        name = "server-generic";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "https://github.com/Gabriel439/Haskell-Server-Generic-Library";
      url = "";
      synopsis = "Auto-generate a server for your datatype";
      description = "This library auto-generates a REST API from any datatype\nthat derives the `Generic` interface\n\nSee the documentation in \"Server.Generic\" for an example of\nhow to use this library";
      buildType = "Simple";
    };
    components = {
      "server-generic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.void)
        ];
      };
    };
  }