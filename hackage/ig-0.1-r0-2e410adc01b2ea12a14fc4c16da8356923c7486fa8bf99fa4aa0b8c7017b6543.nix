{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ig";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Loyful";
      maintainer = "Loyful <opensource@loyful.com>";
      author = "Felipe Lessa <felipe.lessa@loyful.com>, JP Moresmau <jpmoresmau@gmail.com>";
      homepage = "https://github.com/loyful/ig";
      url = "";
      synopsis = "Bindings to Instagram's API.";
      description = "This package exports bindings to Instagram's APIs (see\n<http://instagram.com/developer/>).\n\nWhile we would like to have a complete binding to Instagram's\nAPI, this package is being developed on demand. If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/loyful/ig/issues>).\n\nA sample Yesod application demonstrating the API can be found at <https://github.com/loyful/ig-testapp>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.data-default)
          (hsPkgs.lifted-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-cryptoapi)
          (hsPkgs.base16-bytestring)
        ];
      };
    };
  }