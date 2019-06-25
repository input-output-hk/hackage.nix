{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yesod-static-remote"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/yesod-static-remote#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/remote-static#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.template-haskell)
          (hsPkgs.yesod-static)
          ];
        };
      tests = {
        "remote-static-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-static-remote)
            ];
          };
        };
      };
    }