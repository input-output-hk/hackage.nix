{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      high_precision_date = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "persistent-mongoDB";
        version = "1.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "MongoDB backend for the persistent library.";
      buildType = "Simple";
    };
    components = {
      "persistent-mongoDB" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.mongoDB)
          (hsPkgs.bson)
          (hsPkgs.network)
          (hsPkgs.cereal)
          (hsPkgs.path-pieces)
          (hsPkgs.monad-control)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.pool-conduit)
          (hsPkgs.time)
        ];
      };
    };
  }