{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "typed-uuid"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018-2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/typed-uuid#readme";
      url = "";
      synopsis = "Phantom-Typed version of UUID";
      description = "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.http-api-data)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.uuid)
          (hsPkgs.validity)
          (hsPkgs.validity-uuid)
          ];
        };
      };
    }