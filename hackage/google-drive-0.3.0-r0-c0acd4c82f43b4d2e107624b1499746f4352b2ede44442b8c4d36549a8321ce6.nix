{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "google-drive";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Google Drive API access";
      description = "Interacting with the Google Drive API\n\nSee https://github.com/pbrisbin/google-drive for usage and details.\n";
      buildType = "Simple";
    };
    components = {
      "google-drive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.google-drive)
            (hsPkgs.google-oauth2)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.load-env)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }