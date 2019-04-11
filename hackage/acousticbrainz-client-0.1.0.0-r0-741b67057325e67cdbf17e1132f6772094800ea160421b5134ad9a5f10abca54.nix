{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "acousticbrainz-client"; version = "0.1.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "AcousticBrainz API client";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-noprelude)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.relude)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.microlens-platform)
          (hsPkgs.microlens-aeson)
          (hsPkgs.scientific)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-utils)
          (hsPkgs.text)
          ];
        };
      tests = {
        "golden-tests" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.relude)
            (hsPkgs.acousticbrainz-client)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
            (hsPkgs.pretty-simple)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.text)
            ];
          };
        };
      };
    }