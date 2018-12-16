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
        name = "legion";
        version = "0.2.0.0";
      };
      license = "Apache-2.0";
      copyright = "2015-2016 Rick Owens";
      maintainer = "rick@owenssoftware.com";
      author = "Rick Owens";
      homepage = "https://github.com/taphu/legion";
      url = "";
      synopsis = "Distributed, stateful, homogeneous microservice framework.";
      description = "Legion is a framework for writing distributed,\nhomogeneous, stateful microservices in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Ranged-sets)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.canteven-http)
          (hsPkgs.canteven-log)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.data-dword)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.network)
          (hsPkgs.scotty)
          (hsPkgs.scotty-resource)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.uuid)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
        ];
      };
    };
  }