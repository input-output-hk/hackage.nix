{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "odpic-raw"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "";
      homepage = "https://github.com/leptonyu/odpic-raw#readme";
      url = "";
      synopsis = "Oracle Database Bindings";
      description = "A low-level client library for the Oracle database, implemented as bindings to the C ODPI API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.scientific)
          (hsPkgs.time)
          ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      tests = {
        "odpic-raw-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.odpic-raw)
            (hsPkgs.resourcet)
            (hsPkgs.scientific)
            (hsPkgs.time)
            ];
          build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
          };
        };
      };
    }