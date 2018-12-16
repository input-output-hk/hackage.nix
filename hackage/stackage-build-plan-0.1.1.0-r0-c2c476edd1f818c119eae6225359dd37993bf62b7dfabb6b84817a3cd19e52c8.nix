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
        name = "stackage-build-plan";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/stackage-build-plan";
      url = "";
      synopsis = "Calculate and print (in different formats) Stackage build plans";
      description = "For more information, see <https://www.stackage.org/package/stackage-build-plan>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.yaml)
          (hsPkgs.time)
          (hsPkgs.stackage-types)
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "stackage-build-plan" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stackage-build-plan)
            (hsPkgs.stackage-cli)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }