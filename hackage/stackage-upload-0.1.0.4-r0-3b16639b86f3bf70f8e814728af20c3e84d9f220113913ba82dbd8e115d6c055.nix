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
        name = "stackage-upload";
        version = "0.1.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/stackage-upload";
      url = "";
      synopsis = "A more secure version of cabal upload which uses HTTPS";
      description = "For more information, see <https://www.stackage.org/package/stackage-upload>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "stackage-upload" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stackage-upload)
            (hsPkgs.stackage-cli)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }