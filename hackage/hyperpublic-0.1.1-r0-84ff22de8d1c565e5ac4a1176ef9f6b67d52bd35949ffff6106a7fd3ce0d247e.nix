{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hyperpublic";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mkscrg@gmail.com";
      author = "Mike S. Craig";
      homepage = "https://github.com/mkscrg/hyperpublic-haskell";
      url = "";
      synopsis = "A thin wrapper for the Hyperpublic API";
      description = "A thin wrapper for the Hyperpublic API, which uses @http-enumerator@ to fetch\nresults and @aeson@ to return them as JSON.";
      buildType = "Simple";
    };
    components = {
      "hyperpublic" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-enumerator)
          (hsPkgs.http-types)
        ];
      };
    };
  }