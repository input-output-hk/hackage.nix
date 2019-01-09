{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "antiope-s3"; version = "2.0.0"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Tyler Durden";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.generic-lens)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.monad-logger)
          (hsPkgs.network-uri)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          ];
        };
      tests = {
        "antiope-s3-test" = {
          depends = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-s3)
            (hsPkgs.antiope-s3)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.exceptions)
            (hsPkgs.generic-lens)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.network-uri)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            ];
          };
        };
      };
    }