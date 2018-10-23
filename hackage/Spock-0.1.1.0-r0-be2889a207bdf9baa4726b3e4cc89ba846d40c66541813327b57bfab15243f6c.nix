{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Spock";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "https://github.com/agrafix/Spock";
      url = "";
      synopsis = "Another Haskell web toolkit based on scotty";
      description = "This toolbox provides everything you need to get a quick start into web hacking with haskell: sessions, database helper, authentication and the power of scotty";
      buildType = "Simple";
    };
    components = {
      "Spock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.scotty)
          (hsPkgs.wai)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.wai-extra)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.crypto-api)
          (hsPkgs.unordered-containers)
          (hsPkgs.old-locale)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.cryptohash)
          (hsPkgs.xsd)
          (hsPkgs.aeson)
          (hsPkgs.resource-pool)
        ];
      };
    };
  }