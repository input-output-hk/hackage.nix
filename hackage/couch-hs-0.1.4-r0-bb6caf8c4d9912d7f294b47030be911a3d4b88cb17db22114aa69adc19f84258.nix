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
        name = "couch-hs";
        version = "0.1.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Peter Sagerson <psagers.hs@ignorare.net>";
      author = "Peter Sagerson";
      homepage = "";
      url = "";
      synopsis = "A CouchDB view server for Haskell.";
      description = "A CouchDB view server for Haskell.";
      buildType = "Simple";
    };
    components = {
      "couch-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.hint)
        ];
      };
      exes = { "couch-hs" = {}; };
    };
  }