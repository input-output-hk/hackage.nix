{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-avro"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jesse Kempf";
      author = "";
      homepage = "https://github.com/doublecrowngaming/servant-avro#readme";
      url = "";
      synopsis = "Avro content type for Servant";
      description = "This package lets Servant use Avro for encoding request data";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.avro) (hsPkgs.base) (hsPkgs.servant) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.avro)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.servant)
            (hsPkgs.servant-avro)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }