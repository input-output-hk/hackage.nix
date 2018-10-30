{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bloodhound-amazonka-auth";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/MichaelXavier/bloodhound-amazonka-auth#readme";
      url = "";
      synopsis = "Adds convenient Amazon ElasticSearch Service authentication to Bloodhound.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bloodhound)
          (hsPkgs.http-client)
          (hsPkgs.time)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-elasticsearch)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.uri-bytestring)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bloodhound-amazonka-auth)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.amazonka-core)
            (hsPkgs.http-client)
            (hsPkgs.time)
            (hsPkgs.bloodhound)
            (hsPkgs.text)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.http-client-tls)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.retry)
          ];
        };
      };
    };
  }